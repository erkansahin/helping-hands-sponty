import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:fpdart/fpdart.dart';
import 'package:helping_hands_sponty/domain/geolocator/location_model.dart';
import 'package:helping_hands_sponty/infrastructure/core/json_converters.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/auth_user_model.dart';
import '../../domain/auth/blood_type.dart';
import '../../domain/auth/i_auth_service.dart';

import '../core/firestore_extension.dart';
import 'dto/auth_user_model_dto.dart';
import 'firebase_user_mapper.dart';

@LazySingleton(as: IAuthService)
class FirebaseAuthFacade implements IAuthService {
  final auth.FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  FirebaseAuthFacade(
    this._firebaseAuth,
    this._firestore,
  );

  @override
  Future<Option<AuthUserModel>> getDatabaseUser({required String id}) async {
    try {
      final DocumentSnapshot snapshot =
          await _firestore.authUserCollection.doc(id).get();
      if (snapshot.exists) {
        print("authh getDatabaseUser EXISTS snapshot: ${snapshot.data()}");
        return some(AuthUserModelDto.fromFirestore(snapshot).toDomain());
      } else {
        print("authh getDatabaseUser DOES NOT EXIST");
        return none();
      }
    } catch (e) {
      log("authh Error $e on getDatabaseUser");
      return none();
    }
  }

  @override
  Future<Option<AuthUserModel>> getDatabaseUserWithPhoneNumber(
      {required String phoneNumber}) async {
    try {
      final query = await _firestore.authUserCollection
          .where("phoneNumber", isEqualTo: phoneNumber)
          .get();
      if (query.docs.isNotEmpty && query.docs[0].exists) {
        final doc = query.docs[0];
        return some(AuthUserModelDto.fromFirestore(doc).toDomain());
      } else {
        print("authh getDatabaseUserWithPhoneNumber DOES NOT EXIST");
        return none();
      }
    } catch (e) {
      log("authh Error $e on getDatabaseUserWithPhoneNumber");
      return none();
    }
  }

  @override
  Future<Option<Unit>> signUpUser({
    required String name,
    required BloodType bloodType,
    required String phoneNumber,
    required String emergencyContactName,
    required String emergencyContactNumber,
  }) async {
    try {
      await _firestore.authUserCollection
          .doc(_firebaseAuth.currentUser!.uid)
          .update({
        "name": name,
        "bloodType": bloodType.name,
        "phoneNumber": phoneNumber,
        "emergencyContactName": emergencyContactName,
        "emergencyContactNumber": emergencyContactNumber,
      });
      return some(unit);
    } catch (e) {
      return none();
    }
    //
  }

  @override
  Future<Option<Unit>> saveUserToDatabase(
      {required AuthUserModel userModel}) async {
    try {
      _firestore.authUserCollection
          .doc(userModel.id)
          .set(AuthUserModelDto.fromDomain(userModel).toJson());
      return some(unit);
    } catch (e) {
      return none();
    }
    //
  }

  @override
  Future<void> updateUserLocation({
    required LocationModel location,
  }) async {
    await _firestore.authUserCollection
        .doc(_firebaseAuth.currentUser!.uid)
        .update(
            {"latitude": location.latitude, "longitude": location.longitude});
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInAnonymously() async {
    try {
      ///Sign in anonymously with Firebase Auth
      await _firebaseAuth.signInAnonymously();
      return right(unit);
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Stream<AuthUserModel> get authStateChanges {
    return _firebaseAuth.userChanges().map(
      (auth.User? user) {
        if (user == null) {
          return AuthUserModel.empty();
        } else {
          return user.toDomain();
        }
      },
    );
  }

  @override
  Stream<AuthUserModel> databaseUserChanges({required String userId}) {
    final Stream<DocumentSnapshot> snapshots =
        _firestore.authUserCollection.doc(userId).snapshots();

    return snapshots.map((e) {
      //Sometimes the stream may emit a doc with a null data when a user signs
      //out. This causes an exception when paring the user's document's data.
      if (e.data() == null) {
        return AuthUserModel.empty();
      }

      final user = AuthUserModelDto.fromFirestore(e).toDomain();
      return user;
    });
  }
}

import 'package:fpdart/fpdart.dart';
import 'package:helping_hands_sponty/domain/geolocator/location_model.dart';

import 'auth_failure.dart';
import 'auth_user_model.dart';

abstract class IAuthService {
  Future<Option<AuthUserModel>> getDatabaseUser({required String id});

  Stream<AuthUserModel> databaseUserChanges({required String userId});


  Future<Option<Unit>> saveUserToDatabase({
    required AuthUserModel userModel,
  });
  Future<Either<AuthFailure, Unit>> signInAnonymously();
  Future<void> updateUserLocation({
    required LocationModel location,
  });

  Stream<AuthUserModel> get authStateChanges;

  Future<void> signOut();
}

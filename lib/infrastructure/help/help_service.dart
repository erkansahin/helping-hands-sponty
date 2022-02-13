import 'package:fpdart/fpdart.dart';
import 'package:helping_hands_sponty/domain/auth/auth_user_model.dart';
import 'package:helping_hands_sponty/infrastructure/auth/dto/auth_user_model_dto.dart';
import 'package:helping_hands_sponty/infrastructure/help/dto/help_model_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

import '../../domain/help/help_model.dart';
import '../core/firestore_extension.dart';
import '../../domain/help/i_help_service.dart';
import '../core/json_converters.dart';

@LazySingleton(as: IHelpService)
class HelpService implements IHelpService {
  final FirebaseFirestore _firestore;

  HelpService(
    this._firestore,
  );

  @override
  Future<Option<HelpModel>> helpSomeone(
      {required String helpedUserId,
      required AuthUserModel helpingUser}) async {
    try {
      final query = await _firestore.authUserCollection
          .where("id", isEqualTo: helpedUserId)
          .get();

      if (query.docs.isNotEmpty) {
        final helpedUser =
            AuthUserModelDto.fromFirestore(query.docs[0]).toDomain();

        final date = DateTime.now();

        final helpModel = HelpModel(
          fromUser: helpingUser,
          toUser: helpedUser,
          helpDate: date,
        );

        final doc = _firestore.helpCollection.doc();

        await doc.set({
          "helpingUser": AuthUserModelDto.fromDomain(helpingUser).toJson(),
          "helpedUser": AuthUserModelDto.fromDomain(helpedUser).toJson(),
          "date": sendDateTimeToJson(date)
        });

        return some(helpModel);
      }
      return none();
    } catch (e) {
      return none();
    }
  }
}

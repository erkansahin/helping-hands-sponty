import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fpdart/fpdart.dart';
import 'package:helping_hands_sponty/domain/auth/auth_user_model.dart';
import 'package:injectable/injectable.dart';

import '../../domain/danger_reporting/i_danger_reporting_service.dart';
import '../auth/dto/auth_user_model_dto.dart';
import '../core/firestore_extension.dart';
import '../core/json_converters.dart';

@LazySingleton(as: IDangerReportingService)
class DangerReportingService implements IDangerReportingService {
  final FirebaseFirestore _firestore;

  DangerReportingService(this._firestore);
  @override
  Future<Option<Unit>> markUserInDanger({
    required String dangerDescription,
    required String userId,
  }) async {
    try {
      await _firestore.authUserCollection.doc(userId).update({
        "dangerDescription": dangerDescription,
        "isInDanger": true,
        "inDangerDate": sendDateTimeToJson(DateTime.now())
      });
      return some(unit);
    } catch (e) {
      return none();
    }
  }

  @override
  Future<Option<Unit>> markUserNotInDanger({
    required String userId,
  }) async {
    try {
      await _firestore.authUserCollection.doc(userId).update({
        "dangerDescription": "",
        "isInDanger": false,
        "inDangerDate":
            sendDateTimeToJson(DateTime.fromMillisecondsSinceEpoch(0))
      });
      return some(unit);
    } catch (e) {
      return none();
    }
  }

  @override
  Stream<List<AuthUserModel>> get usersUnderDangerStream {
    return _firestore.authUserCollection.snapshots().map((event) {
      final allUsers = event.docs
          .map((e) => AuthUserModelDto.fromFirestore(e).toDomain())
          .toList();
      return allUsers.where((element) => element.isInDanger).toList();
    });
  }
}

import 'package:fpdart/fpdart.dart';
import 'package:helping_hands_sponty/domain/auth/auth_user_model.dart';

abstract class IDangerReportingService {
  Future<Option<Unit>> markUserInDanger({
    required String userId,
    required String dangerDescription,
  });

  Future<Option<Unit>> markUserNotInDanger({
    required String userId,
  });

  Stream<List<AuthUserModel>> get usersUnderDangerStream;
}

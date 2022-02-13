import 'package:fpdart/fpdart.dart';
import 'package:helping_hands_sponty/domain/auth/auth_user_model.dart';

abstract class IHelpService {
  Future<Option<Unit>> help({
    required AuthUserModel fromUser,
    required AuthUserModel toUser,
  });
}

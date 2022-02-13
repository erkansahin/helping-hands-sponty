import 'package:fpdart/fpdart.dart';

import '../auth/auth_user_model.dart';
import 'help_model.dart';

abstract class IHelpService {
  Future<Option<HelpModel>> helpSomeone(
      {required String helpedUserId, required AuthUserModel helpingUser});
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helping_hands_sponty/domain/auth/auth_user_model.dart';

part 'help_model.freezed.dart';

@freezed
class HelpModel with _$HelpModel {
  const factory HelpModel({
    required AuthUserModel fromUser,
    required AuthUserModel toUser,
    required DateTime helpDate,
  }) = _HelpModel;

  const HelpModel._();

  factory HelpModel.empty() => HelpModel(
      fromUser: AuthUserModel.empty(),
      toUser: AuthUserModel.empty(),
      helpDate: DateTime.fromMicrosecondsSinceEpoch(0));
}

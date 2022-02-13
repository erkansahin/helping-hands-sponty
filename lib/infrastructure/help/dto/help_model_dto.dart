import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helping_hands_sponty/domain/auth/blood_type.dart';
import 'package:helping_hands_sponty/domain/help/help_model.dart';
import 'package:helping_hands_sponty/infrastructure/auth/dto/auth_user_model_dto.dart';

import '../../../domain/auth/auth_user_model.dart';

import '../../core/json_converters.dart';
part 'help_model_dto.freezed.dart';
part 'help_model_dto.g.dart';

//Help/Unhelp

@freezed
class HelpModelDto with _$HelpModelDto {
  factory HelpModelDto({
    required AuthUserModelDto fromUser,
    required AuthUserModelDto toUser,
    @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
        required DateTime helpDate,
  }) = _HelpModelDto;

  factory HelpModelDto.empty() => HelpModelDto.fromDomain(HelpModel.empty());

  factory HelpModelDto.fromDomain(HelpModel helpModel) {
    return HelpModelDto(
      fromUser: AuthUserModelDto.fromDomain(helpModel.fromUser),
      helpDate: helpModel.helpDate,
      toUser: AuthUserModelDto.fromDomain(helpModel.toUser),
    );
  }

  factory HelpModelDto.fromJson(Map<String, dynamic> json) =>
      _$HelpModelDtoFromJson(json);

  factory HelpModelDto.fromFirestore(DocumentSnapshot doc) {
    final Map<String, dynamic> docdata =
        doc.data() as Map<String, dynamic>? ?? HelpModelDto.empty().toJson();

    return HelpModelDto.fromJson(docdata);
  }
}

extension HelpModelDtoX on HelpModelDto {
  HelpModel toDomain() {
    return HelpModel(
      helpDate: helpDate,
      fromUser: fromUser.toDomain(),
      toUser: toUser.toDomain(),
    );
  }
}

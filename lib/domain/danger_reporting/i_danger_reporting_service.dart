import 'package:fpdart/fpdart.dart';

abstract class IDangerReportingService {
  Future<Option<Unit>> markUserInDanger({
    required String userId,
    required String dangerDescription,
  });

  Future<Option<Unit>> markUserNotInDanger({
    required String userId,
  });
}

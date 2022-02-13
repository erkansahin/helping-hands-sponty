enum BloodType {
  abnegative,
  abpositive,
  anegative,
  apositive,
  bnegative,
  bpositive,
  unknown,
  onegative,
  opositive,
}

extension CustomString on BloodType {
  String toCustomString() {
    switch (this) {
      case BloodType.abnegative:
        return 'AB-';
      case BloodType.abpositive:
        return 'AB+';
      case BloodType.anegative:
        return 'A-';
      case BloodType.apositive:
        return 'A+';
      case BloodType.bnegative:
        return 'B-';
      case BloodType.bpositive:
        return 'B+';
      case BloodType.unknown:
        return 'Unknown';
      case BloodType.onegative:
        return 'O-';
      case BloodType.opositive:
        return 'O+';
      default:
        return 'Unknown';
    }
  }
}

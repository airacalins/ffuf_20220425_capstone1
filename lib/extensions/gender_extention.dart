import 'package:training_activity/enums/gender.dart';

extension GenderExtension on Gender {
  String genderText() {
    switch (this) {
      case Gender.female:
        return 'Female';
      case Gender.male:
        return 'Male';
      case Gender.nonBinary:
        return 'Non-Binary';
      default:
        return 'Non-Binary';
    }
  }
}

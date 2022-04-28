import 'package:training_activity/enums/position.dart';

extension PositionExtension on Position {
  String positionText() {
    switch (this) {
      case Position.owner:
        return 'Owner';
      case Position.manager:
        return 'Manager';
      case Position.staff:
        return 'Staff';
      default:
        return 'NA';
    }
  }
}

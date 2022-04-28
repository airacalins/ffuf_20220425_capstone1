import 'package:training_activity/enums/leave_status.dart';

extension LeaveStatusExtension on LeaveStatus {
  String leaveStatusText() {
    switch (this) {
      case LeaveStatus.cancelled:
        return 'Cancelled';
      case LeaveStatus.pending:
        return 'Pending';
      case LeaveStatus.approved:
        return 'Approved';
      case LeaveStatus.declined:
        return 'Declined';
      default:
        return 'Pending';
    }
  }
}

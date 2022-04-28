import 'package:training_activity/enums/leave_status.dart';

class Leave {
  int id;
  int employeeId;
  DateTime fromDate;
  DateTime toDate;
  LeaveStatus leaveStatus;

  Leave({
    required this.fromDate,
    required this.toDate,
    required this.employeeId,
    required this.leaveStatus,
  }) : id = 0;
}
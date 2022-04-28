import 'package:training_activity/extensions/leave_status_extensiom.dart';
import 'package:training_activity/models/leave.dart';
import 'package:training_activity/repositories/employee_repository.dart';
import 'package:training_activity/repositories/leave_repository.dart';
import 'package:training_activity/services/interfaces/i_leave_service.dart';

class LeaveService implements ILeaveService {
  final leaveRepository = LeaveRepository();
  final employeeRepository = EmployeeRepository();

  @override
  void displayLeaves() {
    final leaves = leaveRepository.getAll();
    print('LIST OF LEAVES');
    print('----------------------------------------------');
    for (var leave in leaves) {
      final employee = employeeRepository.get(leave.employeeId);
      print('''
Id:             ${leave.id}
Email:          ${employee?.email}
From:           ${leave.fromDate}
To:             ${leave.toDate}
Status:         ${leave.leaveStatus.leaveStatusText()}
''');
    }
  }

  @override
  void displayLeaveDetails(int id) {
    final leave = leaveRepository.get(id);
    print('LEAVE DETAILS');
    print('----------------------------------------------');

    if(leave != null) {
      final employee = employeeRepository.get(leave.employeeId);
      print('''
Id:             ${leave.id}
Email:          ${employee?.email}
From:           ${leave.fromDate}
To:             ${leave.toDate}
Status:         ${leave.leaveStatus.leaveStatusText()}
''');
    }
  }

  @override
  void add(Leave leave) {
    leaveRepository.add(leave);
    displayLeaves();
  }

  @override
  void update(Leave leave) {
    leaveRepository.update(leave);
    displayLeaves();
  }
}

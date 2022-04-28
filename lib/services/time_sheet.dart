import 'package:training_activity/models/time_sheet.dart';
import 'package:training_activity/repositories/employee_repository.dart';
import 'package:training_activity/repositories/time_sheet_repository.dart';
import 'package:training_activity/services/interfaces/i_time_sheet_service.dart';

class TimeSheetService implements ITimeSheetService {
  final timeSheetRepository = TimeSheetRepository();
  final employeeRepository = EmployeeRepository();

  @override
  void displayTimeSheets() {
    final timeSheets = timeSheetRepository.getAll();
    print('----------------------------------------------------');
    print('| LIST OF TIMESHEETS                               |');
    print('----------------------------------------------------');
    for (var timeSheet in timeSheets) {
      final employee = employeeRepository.get(timeSheet.employeeId);
      print('''
Id:                     ${timeSheet.id}
Employee's Name:        ${employee?.firstName} ${employee?.lastName}        
Total Working Hours:    ${timeSheet.totalWorkingHours.toStringAsFixed(1)} hours  
Date:                   ${timeSheet.date}
''');
    }
  }

  @override
  void displayTimeSheetDetails(int id) {
    final timeSheet = timeSheetRepository.get(id);

    if (timeSheet != null) {
      final employee = employeeRepository.get(timeSheet.id);

      print('----------------------------------------------------');
      print('| TIMESHEET DETAILS                                |');
      print('----------------------------------------------------');
      print('''
Id:                     ${timeSheet.id}
Employee's Name:        ${employee?.firstName} ${employee?.lastName}        
Total Working Hours:    ${timeSheet.totalWorkingHours.toStringAsFixed(2)} hours
Date:                   ${timeSheet.date}''');
    }
  }

  @override
  void add(TimeSheet timeSheet) {
    timeSheetRepository.add(timeSheet);
    displayTimeSheets();
  }

  @override
  void update(TimeSheet timeSheet) {
    timeSheetRepository.update(timeSheet);
    displayTimeSheets();
  }

  @override
  void delete(int id) {
    timeSheetRepository.delete(id);
    displayTimeSheets();
  }
}

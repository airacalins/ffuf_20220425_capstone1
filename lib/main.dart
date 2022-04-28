import 'package:training_activity/context/data_initializer.dart';
import 'package:training_activity/enums/leave_status.dart';
import 'package:training_activity/enums/gender.dart';
import 'package:training_activity/enums/position.dart';
import 'package:training_activity/models/department.dart';
import 'package:training_activity/models/employee.dart';
import 'package:training_activity/models/leave.dart';
import 'package:training_activity/models/salary.dart';
import 'package:training_activity/models/time_sheet.dart';
import 'package:training_activity/repositories/department_repository.dart';
import 'package:training_activity/repositories/employee_repository.dart';
import 'package:training_activity/repositories/leave_repository.dart';
import 'package:training_activity/repositories/salary_repository.dart';
import 'package:training_activity/repositories/time_sheet_repository.dart';
import 'package:training_activity/services/department_service.dart';
import 'package:training_activity/services/employee_service.dart';
import 'package:training_activity/services/leave_service.dart';
import 'package:training_activity/services/salary_service.dart';
import 'package:training_activity/services/time_sheet.dart';

void main() {
  final DataInitializer dataInitializer = DataInitializer();
  dataInitializer.seedData();

  print('\n\nGet departments');
  final departmentService = DepartmentService();
  final departmentRepository = DepartmentRepository();
  departmentService.displayDepartments();

  print('\n\nGet department details by id');
  departmentService.displayDepartmentDetails(2);

  print('\n\nAdd department');
  departmentService.add(Department('Advertisung'));

  print('\n\nUpdate department');
  final department = departmentRepository.get(5);
  if (department != null) {
    department.name = 'Advertising';
    departmentService.update(department);
  }

  print('\n\nDelete department');
  departmentService.delete(4);

  print('\n\n***********************************************************');
  final employeeService = EmployeeService();
  final employeeRepository = EmployeeRepository();

  print('\n\nGet employees');
  employeeService.displayEmployees();

  print('\nGet employee details by id');
  employeeService.displayEmployeeDetails(1);

  print('\n\nAdd employee');
  employeeService.add(Employee(
    firstName: 'Princess',
    lastName: 'Adarve',
    birthDate: DateTime.now(),
    gender: Gender.female,
    fathersName: 'Leorna Adarve',
    mothersName: 'Isaiah Adarve',
    designation: Position.staff,
    departmentId: 3,
    currentAddress: '123 First Street',
    permanentAddress: 'Same as above',
    email: 'cess_adarvs@gmail.com',
    contactNumber: '09917123988',
    password: 'pword1234',
  ));

  print('\nUpdate employee');
  final employee = employeeRepository.get(1);

  if (employee != null) {
    employee.lastName = 'Galing';
    employeeService.update(employee);
  }

  print('\nDelete employee');
  employeeService.delete(5);

  print('\n***********************************************************');
  final leaveService = LeaveService();
  final leaveRepository = LeaveRepository();

  print('\nGet leaves');
  leaveService.displayLeaves();

  print('\nGet leave details by id');
  leaveService.displayLeaveDetails(1);

  print('\nAdd leave');
  leaveService.add(Leave(
      fromDate: DateTime.now(),
      toDate: DateTime.now(),
      employeeId: 1,
      leaveStatus: LeaveStatus.declined));

  print('\nUpdate leave');
  final leave = leaveRepository.get(1);
  if (leave != null) {
    leave.leaveStatus = LeaveStatus.declined;
    leaveService.update(leave);
  }

  print('\n\n***********************************************************');
  final salaryService = SalaryService();
  final salaryRepository = SalaryRepository();

  print('\nGet salaries');
  salaryService.displaySalaries();

  print('\nGet salary details by id');
  salaryService.displaySalariesDetails(1);

  print('\n\nAdd salary');
  salaryService.add(Salary(employeeId: 1, date: DateTime.now(), amount: 65000));

  print('\nUpdate salary');
  final salaryDetails = salaryRepository.get(1);
  if (salaryDetails != null) {
    salaryDetails.amount = 30000;
    salaryService.update(salaryDetails);
  }

  print('\nDelete salary');
  salaryService.delete(1);

  print('\n\n***********************************************************');
  final timeSheetService = TimeSheetService();
  final timeSheetRepository = TimeSheetRepository();

  print('\n\nGetting all time sheets');
  timeSheetService.displayTimeSheets();

  print('\nGetting time sheet details');
  timeSheetService.displayTimeSheetDetails(1);

  print('\n\nAdd new timesheet');
  timeSheetService.add(TimeSheet(
    employeeId: 1,
    totalWorkingHours: 10,
    date: DateTime.now(),
  ));

  print('\n\nUpdate time sheet');
  final timeSheetDetails = timeSheetRepository.get(1);
  if (timeSheetDetails != null) {
    timeSheetDetails.totalWorkingHours = 5.5;
    timeSheetService.update(timeSheetDetails);
  }

  print('\n\nDelete time sheet');
  timeSheetService.delete(1);
}

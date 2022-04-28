import 'package:training_activity/models/department.dart';
import 'package:training_activity/models/employee.dart';
import 'package:training_activity/models/leave.dart';
import 'package:training_activity/models/salary.dart';
import 'package:training_activity/models/time_sheet.dart';

abstract class EmployeeDataContext {
  List<Department> departments = List.empty(growable: true);
  List<Employee> employees = List.empty(growable: true);
  List<Leave> leaves = List.empty(growable: true);
  List<Salary> salaries = List.empty(growable: true);
  List<TimeSheet> timeSheets = List.empty(growable: true);
}
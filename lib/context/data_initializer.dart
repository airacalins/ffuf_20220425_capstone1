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

class DataInitializer {
  final departmentRepository = DepartmentRepository();
  final employeeRepository = EmployeeRepository();
  final leaveRepository = LeaveRepository();
  final salaryRepository = SalaryRepository();
  final timeSheetRepository = TimeSheetRepository();

  void seedData() {
    _seedDepartments();
    _seedEmployees();
    _seedLeaves();
    _seedSalary();
    _seedTimeSheet();
  }

  void _seedDepartments() {
    departmentRepository.add(Department('IT'));
    departmentRepository.add(Department('Marketing'));
    departmentRepository.add(Department('Accounting'));
    departmentRepository.add(Department('HR'));
  }

  void _seedEmployees() {
    employeeRepository.add(Employee(
      firstName: 'James',
      lastName: 'Martins',
      birthDate: DateTime.now(),
      gender: Gender.male,
      fathersName: 'Jamie Martins',
      mothersName: 'Jammy Martins',
      designation: Position.staff,
      departmentId: 1,
      currentAddress: '123 First Street',
      permanentAddress: 'Same as above',
      email: 'j_nartins@gmail.com',
      contactNumber: '09990009999',
      password: 'pword1234',
    ));

    employeeRepository.add(Employee(
      firstName: 'Jane',
      lastName: 'Doe',
      birthDate: DateTime.now(),
      gender: Gender.male,
      fathersName: 'Johnny Doe',
      mothersName: 'Jane Doe',
      designation: Position.manager,
      departmentId: 2,
      currentAddress: '123 First Street',
      permanentAddress: 'Same as above',
      email: 'j_doe@gmail.com',
      contactNumber: '09990012999',
      password: 'pword1234',
    ));

    employeeRepository.add(Employee(
      firstName: 'Sharmaine',
      lastName: 'Galang',
      birthDate: DateTime.now(),
      gender: Gender.female,
      fathersName: 'Renato Galang',
      mothersName: 'Princess Galang',
      designation: Position.staff,
      departmentId: 2,
      currentAddress: '123 First Street',
      permanentAddress: 'Same as above',
      email: 'sharm_galang@gmail.com',
      contactNumber: '09990009988',
      password: 'pword1234',
    ));

    employeeRepository.add(Employee(
      firstName: 'Ayah',
      lastName: 'Calins',
      birthDate: DateTime.now(),
      gender: Gender.female,
      fathersName: 'Eloise Calins',
      mothersName: 'Alex Calins',
      designation: Position.staff,
      departmentId: 3,
      currentAddress: '123 First Street',
      permanentAddress: 'Same as above',
      email: 'ayah_calins@gmail.com',
      contactNumber: '09990123988',
      password: 'pword1234',
    ));
  }

  void _seedLeaves() {
    leaveRepository.add(Leave(
      fromDate: DateTime.now(),
      toDate: DateTime.now(),
      employeeId: 1,
      leaveStatus: LeaveStatus.pending,
    ));

    leaveRepository.add(Leave(
      fromDate: DateTime.now(),
      toDate: DateTime.now(),
      employeeId: 2,
      leaveStatus: LeaveStatus.approved,
    ));

    leaveRepository.add(Leave(
      fromDate: DateTime.now(),
      toDate: DateTime.now(),
      employeeId: 2,
      leaveStatus: LeaveStatus.pending,
    ));
  }

  void _seedSalary() {
    salaryRepository.add(Salary(
      employeeId: 1,
      date: DateTime.now(),
      amount: 35000,
    ));

    salaryRepository.add(Salary(
      employeeId: 2,
      date: DateTime.now(),
      amount: 20000,
    ));
  }

  void _seedTimeSheet() {
    timeSheetRepository.add(
      TimeSheet(
        employeeId: 1, 
        totalWorkingHours: 8,
        date: DateTime.now()
      ));

    timeSheetRepository.add(
      TimeSheet(
        employeeId: 2, 
        totalWorkingHours: 8,
        date: DateTime.now()
      ));
    timeSheetRepository.add(
      TimeSheet(
        employeeId: 3, 
        totalWorkingHours: 10,
        date: DateTime.now()
      ));
      timeSheetRepository.add(
    TimeSheet(
        employeeId: 4, 
        totalWorkingHours: 12,
        date: DateTime.now()
      ));
  }
}

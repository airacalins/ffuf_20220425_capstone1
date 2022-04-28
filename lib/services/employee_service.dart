import 'package:training_activity/enums/position.dart';
import 'package:training_activity/extensions/gender_extention.dart';
import 'package:training_activity/extensions/position_extension.dart';
import 'package:training_activity/models/employee.dart';
import 'package:training_activity/repositories/department_repository.dart';
import 'package:training_activity/repositories/employee_repository.dart';
import 'package:training_activity/services/interfaces/i_employee_service.dart';

class EmployeeService implements IEmployeeService {
  final employeeRepository = EmployeeRepository();
  final departmentRepository = DepartmentRepository();

  @override
  void displayEmployees() {
    final employees = employeeRepository.getAll();
    print('LIST OF EMPLOYEES');
    print('----------------------------------------------');
    for (var employee in employees) {
      final department = departmentRepository.get(employee.departmentId);
      print('''
Id:                  ${employee.id}
Name:                ${employee.firstName} ${employee.lastName}
Email:               ${employee.email}
Contact Number:      ${employee.contactNumber}
Designation:         ${employee.designation.positionText()}
Department:          ${department?.name}
''');
    }
  }

  @override
  void displayEmployeeDetails(int id) {
    final employee = employeeRepository.get(id);

    if (employee != null) {
      final department = departmentRepository.get(employee.departmentId);
      print('EMPLOYEE DETAILS');
      print('----------------------------------------------');
      print('''
Id:                 ${employee.id}
First Name:         ${employee.firstName}
Last Name:          ${employee.lastName}
Email:              ${employee.email}
Contact Number:     ${employee.contactNumber}
Gender:             ${employee.gender.genderText()}
Mother's Name:      ${employee.mothersName}
Father's Name:      ${employee.fathersName}
Current Address:    ${employee.currentAddress}
Permanent Address:  ${employee.permanentAddress}
Designation:        ${employee.designation.positionText()}
Department:         ${department?.name}''');
    }
  }

  @override
  void add(Employee employee) {
    employeeRepository.add(employee);
    displayEmployees();
  }

  @override
  void update(Employee employee) {
    employeeRepository.update(employee);
    displayEmployees();
  }

  @override
  void delete(int id) {
    employeeRepository.delete(id);
    displayEmployees();
  }
}

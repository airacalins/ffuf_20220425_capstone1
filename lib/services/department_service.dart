import 'package:training_activity/repositories/department_repository.dart';
import 'package:training_activity/services/interfaces/i_department_service.dart';

import '../models/department.dart';

class DepartmentService implements IDepartmentService {
  final departmentRepository = DepartmentRepository();

  @override
  void displayDepartments() {
    final departments = departmentRepository.getAll();
    print('LIST OF DEPARTMENTS');
    print('----------------------------------------------');
    print('Id       Name      ');
    for (var department in departments) {
      print('${department.id}        ${department.name}');
    }
  }

  @override
  void displayDepartmentDetails(int id) {
    final department = departmentRepository.get(id);
    print('DEPARTMENT DETAILS');
    print('----------------------------------------------');
    print('Id       Name      ');
    print('${department?.id}        ${department?.name}');
  }

  @override
  void add(Department department) {
    departmentRepository.add(department);
    displayDepartments();
  }

  @override
  void update(Department department) {
    departmentRepository.update(department);
    displayDepartments();
  }

  @override
  void delete(int id) {
    departmentRepository.delete(id);
    displayDepartments();
  }
}

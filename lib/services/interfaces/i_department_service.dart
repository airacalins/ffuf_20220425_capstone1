import 'package:training_activity/models/department.dart';

abstract class IDepartmentService {
  void displayDepartments();
  void displayDepartmentDetails(int id);
  void add(Department department);
  void update(Department department);
  void delete(int id);
}

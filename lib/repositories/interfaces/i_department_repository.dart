import 'package:training_activity/models/department.dart';

abstract class IDepartmentRepository {
  List<Department> getAll();
  Department? get(int id);
  void add(Department department);
  void update(Department department);
  void delete(int id);
}

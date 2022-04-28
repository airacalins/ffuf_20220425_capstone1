import 'package:training_activity/models/employee.dart';

abstract class IEmployeeRepository {
  List<Employee> getAll();
  Employee? get(int id);
  void add(Employee employee);
  void update(Employee employee);
  void delete(int id);
}
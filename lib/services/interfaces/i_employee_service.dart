import 'package:training_activity/models/employee.dart';

abstract class IEmployeeService {
  void displayEmployees();
  void displayEmployeeDetails(int id);
  void add(Employee employee);
  void update(Employee employee);
  void delete(int id);
}

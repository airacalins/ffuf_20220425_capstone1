import 'package:training_activity/context/data_context.dart';
import 'package:training_activity/models/employee.dart';
import 'package:training_activity/repositories/interfaces/i_employee_repository.dart';

class EmployeeRepository implements IEmployeeRepository {
  final DataContext _context = DataContext();

  @override
  List<Employee> getAll() => _context.employees;

  @override
  Employee? get(int id) => _context.employees.firstWhere((e) => e.id == id);

  @override
  void add(Employee employee) {
    final newId = _context.employees.isEmpty 
      ? 1 
      : _context.employees.last.id + 1;
    employee.id = newId;
    _context.employees.add(employee);
  }

  @override
  void update(Employee employee) {
    final index = _context.employees.indexWhere((e) => e.id == employee.id);
    if (index != -1) {
      _context.employees[index] = employee;
    }
  }

  @override
  void delete(int id) => _context.employees.removeWhere((e) => e.id == id);
}

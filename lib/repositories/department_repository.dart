import 'package:training_activity/context/data_context.dart';
import 'package:training_activity/models/department.dart';
import 'package:training_activity/repositories/interfaces/i_department_repository.dart';

class DepartmentRepository implements IDepartmentRepository {
  final DataContext _context = DataContext();

  @override
  List<Department> getAll() =>  _context.departments;

  @override
  Department? get(int id) =>  _context.departments.firstWhere((d) => d.id == id);

  @override
  void add(Department department) {
    final newId = _context.departments.isEmpty 
      ? 1 
      : _context.departments.last.id + 1;
    department.id = newId;
    _context.departments.add(department);
  }

  @override
  void update(Department department) {
    final index = _context.departments.indexWhere((d) => d.id == department.id);
    if (index != -1) {
      _context.departments[index] = department;
    }
  }

  @override
  void delete(int id) => _context.departments.removeWhere((d) => d.id == id);
}

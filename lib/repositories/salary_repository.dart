import 'package:training_activity/context/data_context.dart';
import 'package:training_activity/models/salary.dart';
import 'package:training_activity/repositories/interfaces/i_salary_repository.dart';

class SalaryRepository implements ISalaryRepository {
  final DataContext _context = DataContext();

  @override
  List<Salary> getAll() => _context.salaries;

  @override
  Salary? get(int id) => _context.salaries.firstWhere((s) => s.id == id);    

  @override
  void add(Salary salary) {
    final newId = _context.salaries.isEmpty 
      ? 1 
      : _context.salaries.last.id + 1;
    salary.id = newId;
    _context.salaries.add(salary);
  }

  @override
  void update(Salary salary) {
    final index = _context.salaries.indexWhere((s) => s.id == salary.id);
    if (index != -1) {
      _context.salaries[index] = salary;
    }
  }

  @override
  void delete(int id) => _context.salaries.removeWhere((s) => s.id == id);
}

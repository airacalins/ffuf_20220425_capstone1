import 'package:training_activity/models/salary.dart';

abstract class ISalaryRepository {
  List<Salary> getAll();
  Salary? get(int id);
  void add(Salary salary);
  void update(Salary salary);
  void delete(int id);
}
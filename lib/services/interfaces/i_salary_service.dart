import 'package:training_activity/models/salary.dart';

abstract class ISalaryService {
  void displaySalaries();
  void displaySalariesDetails(int id);
  void add(Salary salary);
  void update(Salary salary);
  void delete(int id);
}

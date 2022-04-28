import 'package:training_activity/context/employee_data_context.dart';

class DataContext extends EmployeeDataContext {
  static final DataContext _context = DataContext._internal();

  factory DataContext() {
    return _context;
  }

  DataContext._internal();
}
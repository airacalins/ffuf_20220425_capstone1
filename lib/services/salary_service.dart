import 'package:training_activity/models/salary.dart';
import 'package:training_activity/repositories/employee_repository.dart';
import 'package:training_activity/repositories/salary_repository.dart';
import 'package:training_activity/services/interfaces/i_salary_service.dart';

class SalaryService implements ISalaryService {
  final salaryRepository = SalaryRepository();
  final employeeRepository = EmployeeRepository();

  @override
  void displaySalaries() {
    final salaries = salaryRepository.getAll();
    print('LIST OF SALARIES');
    print('----------------------------------------------');

    for (var salary in salaries) {
      if(salary != null) {
        final employee = employeeRepository.get(salary.employeeId);
          print('''
Id:               ${salary.employeeId}
Employee:         ${employee?.firstName} ${employee?.lastName}
Date:             ${salary.date}
Amount:           ${salary.amount.toStringAsFixed(2)}
''');
      }
     
    }
  }

  @override
  void displaySalariesDetails(int id) {
    final salary = salaryRepository.get(id);
    print('SALARY DETAILS');
    print('----------------------------------------------');
    print('''           
Id:               ${salary?.employeeId}
Date:             ${salary?.date}
Amount:           ${salary?.amount}''');
  }

  @override
  void add(Salary salary) {
    salaryRepository.add(salary);
    displaySalaries();
  }

  @override
  void update(Salary salary) {
    salaryRepository.update(salary);
    displaySalaries();
  }

  @override
  void delete(int id) {
    salaryRepository.delete(id);
    displaySalaries();
  }
}

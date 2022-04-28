class Salary {
  int id;
  int employeeId;
  DateTime date;
  double amount;

  Salary({
    required this.employeeId,
    required this.date,
    required this.amount,
    this.id = 0
  });
}

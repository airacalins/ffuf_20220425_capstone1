class TimeSheet {
  int id;
  int employeeId;
  double totalWorkingHours;
  DateTime date;

  TimeSheet({
    required this.employeeId, 
    required this.totalWorkingHours, 
    required this.date,
  }) : id = 0;
}

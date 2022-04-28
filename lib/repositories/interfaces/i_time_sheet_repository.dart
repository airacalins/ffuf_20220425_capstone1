import 'package:training_activity/models/time_sheet.dart';

abstract class ITimeSheetRepository {
  List<TimeSheet> getAll();
  TimeSheet? get(int id);
  void add(TimeSheet timeSheet);
  void update(TimeSheet timeSheet);
  void delete(int id);
}
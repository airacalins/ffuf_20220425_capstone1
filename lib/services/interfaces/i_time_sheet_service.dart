import 'package:training_activity/models/time_sheet.dart';

abstract class ITimeSheetService {
  void displayTimeSheets();
  void displayTimeSheetDetails(int id);
  void add(TimeSheet timeSheet);
  void update(TimeSheet timeSheet);
  void delete(int id);
}

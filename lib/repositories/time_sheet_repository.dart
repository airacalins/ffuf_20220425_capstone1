import 'package:training_activity/context/data_context.dart';
import 'package:training_activity/models/time_sheet.dart';
import 'package:training_activity/repositories/interfaces/i_time_sheet_repository.dart';

class TimeSheetRepository implements ITimeSheetRepository {
  final DataContext _context = DataContext();

  @override
  List<TimeSheet> getAll() => _context.timeSheets;

  @override
  TimeSheet? get(int id) => _context.timeSheets.firstWhere((t) => t.id == id);

  @override
  void add(TimeSheet timeSheet) {
    final newId = _context.timeSheets.isEmpty 
      ? 1 
      : _context.timeSheets.last.id + 1;
    timeSheet.id = newId;
    _context.timeSheets.add(timeSheet);
  }

  @override
  void update(TimeSheet timeSheet) {
    final index = _context.timeSheets.indexWhere((t) => t.id == timeSheet.id);
    if (index != -1) {
      _context.timeSheets[index] = timeSheet;
    }
  }

  @override
  void delete(int id) => _context.timeSheets.removeWhere((t) => t.id == id);
}

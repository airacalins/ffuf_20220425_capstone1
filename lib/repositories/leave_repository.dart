import 'package:training_activity/context/data_context.dart';
import 'package:training_activity/models/leave.dart';
import 'package:training_activity/repositories/interfaces/i_leave_repository.dart';

class LeaveRepository implements ILeaveRepository {
  final DataContext _context = DataContext();

  @override
  List<Leave> getAll() => _context.leaves;

  @override
  Leave? get(int id) => _context.leaves.firstWhere((l) => l.id == id);

  @override
  void add(Leave leave) {
    final newId = _context.leaves.isEmpty 
      ? 1 
      : _context.leaves.last.id + 1;
    leave.id = newId;
    _context.leaves.add(leave);
  }

  @override
  void update(Leave leave) {
    final index = _context.leaves.indexWhere((e) => e.id == leave.id);
    if (index != -1) {
      _context.leaves[index] = leave;
    }
  }
}

import 'package:training_activity/models/leave.dart';

abstract class ILeaveRepository {
  List<Leave> getAll();
  Leave? get(int id);
  void add(Leave leave);
  void update(Leave leave);
}

import 'package:training_activity/models/leave.dart';

abstract class ILeaveService {
  void displayLeaves();
  void displayLeaveDetails(int id);
  void add(Leave leave);
  void update(Leave leave);
}

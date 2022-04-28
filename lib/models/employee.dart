import 'package:training_activity/enums/gender.dart';
import 'package:training_activity/enums/position.dart';

class Employee {
  int id;
  String firstName;
  String lastName;
  DateTime birthDate;
  Gender gender;
  String fathersName;
  String mothersName;
  Position designation;
  int departmentId;
  String currentAddress;
  String permanentAddress;
  String email;
  String contactNumber;
  String password;

  Employee({
    required this.firstName,
    required this.lastName,
    required this.birthDate,
    required this.gender,
    required this.fathersName,
    required this.mothersName,
    required this.designation,
    required this.departmentId,
    required this.currentAddress,
    required this.permanentAddress,
    required this.email,
    required this.contactNumber,
    required this.password
  }) : id = 0;
}

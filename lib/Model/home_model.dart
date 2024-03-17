import 'package:hive/hive.dart';
part 'home_model.g.dart';

@HiveType(typeId: 1)
class FormModel extends HiveObject {
  @HiveField(0)
  int? id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String phoneNumber;

  FormModel({
    required this.name,
     required this.phoneNumber,
     this.id});
}


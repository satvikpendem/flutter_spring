//isar database with freezed

import 'package:isar/isar.dart';

part 'db.g.dart';

@Collection()
class Routine {
  final routineId = Isar.autoIncrement;
  late String title;

  @Index()
  late DateTime startTime;

  @Index(caseSensitive: false)
  late String day;

  @Index(composite: [CompositeIndex("title")])
  final category = IsarLink<Category>();
}

@Collection()
class Category {
  final categoryId = Isar.autoIncrement;

  @Index(unique: true)
  late String name;
}

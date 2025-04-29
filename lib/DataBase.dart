import 'database/Database.dart';

class Database {
  static late final AppDatabase database;
  static Future<void> init() async{
    database = await $FloorAppDatabase
        .databaseBuilder("app_database.db")
        .build();
  }
}
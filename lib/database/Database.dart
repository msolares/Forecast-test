import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:wheathertest/database/login-dao.dart';
import 'package:wheathertest/database/user-entity.dart';

part 'Database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [LoginEntity])
abstract class AppDatabase extends FloorDatabase {
  LoginDao get loginDao;
}
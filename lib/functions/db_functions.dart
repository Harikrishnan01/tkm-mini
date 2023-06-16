// import 'package:sqflite/sqflite.dart';
// import 'package:flutter/material.dart';
// import 'package:submini/list/list_class.dart';

// ValueNotifier<List<classList>> classlistNotifier = ValueNotifier([]);

// late Database _db;

// Future<void> initOpenDatabase() async {
//   _db = await openDatabase(
//     'student.db',
//     version: 1,
//     onCreate: (Database db, int version) {
//       db.execute(
//         'CREATE TABLE class (id INTEGER PRIMARY KEY, classname TEXT, rollno INTEGER)',
//       );
//     },
//   );
// }

// Future<void> addStudent(classList value) async {
//   // Implement your addStudent logic here
// }

// Future<void> getStudent() async {
//   // await initOpenDatabase(); // Call the initialization function before accessing the database
//   classlistNotifier.value.clear();
//   final _values = await _db.rawQuery('SELECT * FROM class');
//   print(_values);
//   classlistNotifier.notifyListeners();
// }

// Future<void> deleteStudent(classList value) async {
//   // Implement your deleteStudent logic here
// }

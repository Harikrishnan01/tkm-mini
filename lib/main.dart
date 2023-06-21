import 'package:flutter/material.dart';
import 'package:submini/list/list_classroom.dart';
import 'package:submini/screens/admin_login.dart';
import 'package:submini/screens/classroom_details.dart';
import 'package:submini/screens/main_page.dart';
import 'package:submini/screens/screen_about.dart';

import 'package:submini/screens/screen_out.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  // await initOpenDatabase();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(hari());
}

class hari extends StatelessWidget {
  const hari({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: AdminLogin(),
    );
  }
}

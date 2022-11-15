import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_db_provider/providers/todo_provider.dart';
import 'package:todo_db_provider/ui/screens/splash_screen.dart';

import 'data_respository/db_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbHelper.dbHelper.initDatabase();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChangeNotifierProvider<TodoClass>(
        create: (context) {
          return TodoClass();
        },
        child: AppInit());
  }
}

class AppInit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'gsk',
      home: SplashScreen(),
    );
  }
}

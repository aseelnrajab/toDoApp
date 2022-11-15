import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_db_provider/ui/screens/todo_main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  navigationMethod() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return TodoMainScreen();
    }));
  }

  @override
  void initState() {
    super.initState();
    navigationMethod();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.list,
          size: 50,
        ),
      ),
    );
  }
}

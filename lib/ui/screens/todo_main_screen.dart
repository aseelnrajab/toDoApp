import 'package:flutter/material.dart';
import 'package:todo_db_provider/ui/screens/all_tasks.dart';
import 'package:todo_db_provider/ui/screens/complete_tasks.dart';
import 'package:todo_db_provider/ui/screens/incomplete_tasks.dart';

import 'new_task_screen.dart';

class TodoMainScreen extends StatelessWidget {
  const TodoMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[200],
            title: const Text(
              'Your Todo app',
              style: TextStyle(color: Colors.black),
            ),
            bottom: const TabBar(
              labelColor: Colors.black,
              tabs: [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'Complete',
                ),
                Tab(
                  text: 'InComplete',
                ),
              ],
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return NewTaskScreen();
                    }));
                  },
                  icon: const Icon(Icons.add, color: Colors.black)),
            ],
          ),
          body: const TabBarView(
            children: [
              AllTasksScreen(),
              CompleteTasksScreen(),
              InCompleteTasksScreen(),
            ],
          ),
        ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../providers/todo_provider.dart';
import '../widgets/task_widget.dart';

class CompleteTasksScreen extends StatelessWidget {
  const CompleteTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TodoClass>(builder: (context, provider, x) {
      return ListView.builder(
          itemCount: provider.completeTasks.length,
          itemBuilder: (context, index) {
            return TaskWidget(provider.completeTasks[index]);
          });
    });
  }
}

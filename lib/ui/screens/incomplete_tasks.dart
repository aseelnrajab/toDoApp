import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../providers/todo_provider.dart';
import '../widgets/task_widget.dart';

class InCompleteTasksScreen extends StatelessWidget {
  const InCompleteTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TodoClass>(builder: (context, provider, x) {
      return ListView.builder(
          itemCount: provider.inCompleteTasks.length,
          itemBuilder: (context, index) {
            return TaskWidget(provider.inCompleteTasks[index]);
          });
    });
  }
}

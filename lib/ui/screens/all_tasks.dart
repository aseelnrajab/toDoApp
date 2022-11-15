import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todo_db_provider/providers/todo_provider.dart';
import 'package:todo_db_provider/ui/widgets/task_widget.dart';

class AllTasksScreen extends StatelessWidget {
  const AllTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //consumer takes only one provider, consumer2 access 2 providers
    /* return Consumer<TodoClass, SecondProvider>(
    builder:(context, provider1, provider2, x)*/

    return Consumer<TodoClass>(builder: (context, provider, x) {
      return ListView.builder(
          itemCount: provider.allTasks.length,
          itemBuilder: (context, index) {
            return TaskWidget(provider.allTasks[index]);
          });
    });
  }
}

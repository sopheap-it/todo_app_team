import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_team/kheavsokhan/provider/todo_app/add_todo.dart';
import 'package:todo_app_team/kheavsokhan/provider/todo_app/save_task.dart';

class TodoProvider extends StatelessWidget {
  const TodoProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text("ToDo List", style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Consumer<SaveTask>(
            builder: (context, task, child){
              return ListView.builder(
                itemCount: task.tasks.length,
                  itemBuilder: (context, index){
                    return ListTile(
                      title: Text(
                        task.tasks[index].title,
                        style: TextStyle(
                          color: Colors.white,
                          decoration: task.tasks[index].isCompleted
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                          decorationColor: Colors.white, // Set line-through color to white
                        ),
                      ),
                      trailing: Wrap(
                        children: [
                          Checkbox(
                            value: task.tasks[index].isCompleted,
                            onChanged: (_) {
                              context.read<SaveTask>().checkTask(index);
                            },
                            checkColor: Colors.white,
                          ),
                          IconButton(
                              onPressed: () {
                                context.read<SaveTask>().removeTask(task.tasks[index]);
                              },
                              icon: const Icon(Icons.delete, color: Colors.white,)
                          ),
                        ],
                      ),
                    );
                  }
              );
            }
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AddTodo()));
          },
        shape: const CircleBorder(),
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        child: const Icon(Icons.add, color: Colors.white,),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:todoapp/components/todo_tile.dart";
import "package:todoapp/components/dialog_box.dart";
import "package:todoapp/models/todo.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();

  final _searchController = TextEditingController();

  List<Todo> todos = [];

  List<Todo> _searchedTodos = [];

  bool _isSearching = false;

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      todos[index].isSelected = !todos[index].isSelected;
    });
  }

  void saveNewTask() {
    setState(() {
      todos.add(
        Todo(title: _controller.text, isSelected: false),
      );

      // toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  void deleteTask(int index) {
    setState(() {
      todos.removeAt(index);
      //toDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 242, 242),
      appBar: AppBar(
        backgroundColor: Colors.amber[300],
        title: Text(
          "Todo List",
          style: TextStyle(
            fontSize: 30.0,
            letterSpacing: 2.0,
          ),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(
          Icons.add,
          size: 30.0,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(1.0, 1.0, 1.0, 0.0),
        child: Column(
          children: [
            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0,0.0,30.0,0.0),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  // filled: true,
                  fillColor: const Color.fromARGB(181, 255, 255, 255),
                  icon:Icon(Icons.search),
                   hintText: 'Enter the task to search !.....',
                ),
                onChanged: (value) {
                  setState(() {
                    final searchedText = value.trim().toLowerCase();
            
                    if (searchedText.isNotEmpty) {
                      _isSearching = true;
            
                      _searchedTodos = todos
                          .where((element) =>
                              element.title.toLowerCase().contains(searchedText))
                          .toList();
                    } else {
                      _isSearching = false;
                      _searchedTodos = [];
                    }
                  });
                },
              ),
            ),
            Expanded(
              child: _isSearching
                  ? ListView.builder(
                      itemCount: _searchedTodos.length,
                      itemBuilder: (context, index) {
                        return TodoTile(
                          taskName: _searchedTodos[index].title,
                          taskCompleted: _searchedTodos[index].isSelected,
                          onChanged: (value) => checkBoxChanged(value, index),
                          deleteFunction: (context) => deleteTask(index),
                        );
                      })
                  : ListView.builder(
                      itemCount: todos.length,
                      itemBuilder: (context, index) {
                        return TodoTile(
                          taskName: todos[index].title,
                          taskCompleted: todos[index].isSelected,
                          onChanged: (value) => checkBoxChanged(value, index),
                          deleteFunction: (context) => deleteTask(index),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

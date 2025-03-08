
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
// import 'package:hive/hive.dart';
import 'package:todoapp/Pages/Util/Todo_tile.dart';

import 'Util/data/database.dart';
import 'Util/dialog_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //text controller
  final _controller = TextEditingController();
  final _myBox= Hive.box("mybox");
  TodoDataBase db= TodoDataBase();
  @override
  void initState() {
    // TODO: implement initState
    //if this is the first time ever openning the app show this data
    if(_myBox.get('TODOLIST')==null){
db.createInitialData();
    }else{
      //load data from database
      db.LoadData();
    }
    super.initState();
  }

  //list of todo
  // List toDoList = [
  //   ['make tutorial', false],
  //   ['do excercise', false],
  // ];

  //checkbox on tap
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.toDoList[index][1] = !  db.toDoList[index][1];
    });
    db.UpdateDataBase();
  }

  //save new taxt
  void saveNewTask() {
    setState(() {
     db.toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.UpdateDataBase();
  }
 //delete task
 void deleteTask(int index){
  setState(() {
       db.toDoList.removeAt(index);
  });
  db.UpdateDataBase();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('TO DO'),
        elevation: 0,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        backgroundColor: Colors.yellow,
        child: Icon(Icons.add),
      ),

      body: ListView.builder(
        itemCount:db.toDoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName:db.toDoList[index][0],
            taskCompleted: db.toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (Context) =>deleteTask(index),
          );
        },
      ),
      // body: ListView(
      //   children: [
      //     TodoTile(taskName: 'make tutotial', taskCompleted: true, onChanged: (p0) {  },)
      //   ],
      // ),
    );
  }
}

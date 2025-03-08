// import 'package:hive_flutter/adapters.dart';

import 'package:hive_flutter/hive_flutter.dart';

class TodoDataBase {
  List toDoList = [];
  final _myBox = Hive.box('mybox');

  //initial data on screen
  void createInitialData() {
    toDoList = [
      ['make tutorial', false],
      ['do excercise', false],
    ];
  }
  //load data from database
  void LoadData(){
toDoList=_myBox.get('TODOLIST');
  }

  //update task
  void UpdateDataBase(){
    _myBox.put('TODOLIST', toDoList);

  }
}

import 'package:flutter/material.dart';
import 'package:todoapp/Pages/Util/my_buttons.dart';

class DialogBox extends StatelessWidget {
  final  controller;
  VoidCallback onSave;
  VoidCallback onCancel;
   DialogBox({super.key,required this.controller, required this.onSave,required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  fillColor: Colors.black12,
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.yellow, width: 2.0), // Unfocused border
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black, width: 2.0), // Focused border
                  ),
                  
                  hintText: "Add a new task"),
            ),

            //button to save input or cancell
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save button
                MyButtons(text: 'Save', onPressed:onSave),
                //to create a gap between them
                const SizedBox(
                  width: 8,
                ),
                //cancel button
                MyButtons(text: 'Cancel', onPressed:onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}

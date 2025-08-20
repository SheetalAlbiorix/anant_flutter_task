import 'package:flutter/material.dart';

Widget get datePicker => Builder(
  builder: (context) => Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Select the Date",
        style: TextStyle(fontSize: 25)
        ),
        ElevatedButton(onPressed: () async {
          DateTime? datePicked = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2021),
              lastDate: DateTime(2026)
          );
          if (datePicked != null) {
            print('Date Selected:${datePicked.day},${datePicked.month},${datePicked.year}');
          }

        }, child: Text('Show')),

        SizedBox(height: 10,),

        ElevatedButton(onPressed: () async{
          TimeOfDay? timePicked = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
              initialEntryMode: TimePickerEntryMode.input

          );
          if (timePicked != null) {
            print('Time Selected:${timePicked.hour},${timePicked.minute}');
          }
        }, child: Text("Select time"))
      ],
    ),
  )
);


















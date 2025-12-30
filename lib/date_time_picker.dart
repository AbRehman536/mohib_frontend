import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePickerDemo extends StatefulWidget {
  const DateTimePickerDemo({super.key});

  @override
  State<DateTimePickerDemo> createState() => _DateTimePickerDemoState();
}

class _DateTimePickerDemoState extends State<DateTimePickerDemo> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Time Picker"),
      ),
      body: Center(child: Column(children: [
        Text(
          DateFormat.yMMMMEEEEd().format(selectedDate)
        ),
            ElevatedButton(onPressed: (){
              showDatePicker(
                  context: context,
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2100))
                  .then((value){
                    setState(() {
                      selectedDate = value!;
                    });
              });
            }, child: Text("Show Date Picker")),
        Text(
          selectedTime.format(context).toString()
        ),
        ElevatedButton(onPressed: (){
          showTimePicker(
              context: context,
              initialTime: TimeOfDay.now())
              .then((value){
                setState(() {
                  selectedTime = value! ;
                });
          });
        }, child: Text("Show Time Picker"))
      ],),),
    );
  }
}

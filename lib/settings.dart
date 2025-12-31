import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitchON = false;
  double selectedValue = 20;
  List<String> itemList = ["Flutter", "Web" , "UI/UX"];
  String? selectedItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(children: [
        ListTile(
          leading: Icon(isSwitchON ? Icons.notification_add : Icons.notifications_none),
          title: Text("Notification"),
          subtitle: Text(isSwitchON ? "ON" : "OFF"),
          trailing: CupertinoSwitch(
              activeColor: Colors.green,
              inactiveTrackColor: Colors.grey,
              thumbColor: Colors.black,
              value: isSwitchON,
              onChanged: (val){
                setState(() {
                  isSwitchON = val;
                });
              }),
        ),
        Pinput(
          length: 6,
          showCursor: true,
          onCompleted: (value){
            print(value);
          },
          defaultPinTheme: PinTheme(
            width: 50, height: 50,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black)
            ),
            textStyle: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w900,
              color: Colors.white
            )
          ),
        ),
        Slider(
            value: selectedValue,
            min: 0, max: 100,
            divisions: 50,
            label: selectedValue.round().toString(),
            onChanged: (value){
              setState(() {
                selectedValue = value;
              });
            }),
        DropdownButton(
          hint: Text("Select Item"),
            value: selectedItem,
            items: itemList.map((e){
              return DropdownMenuItem(
                value: e,
                  child: Text(e.toString()));
            }).toList(),
            onChanged: (val){
            setState(() {
              selectedItem = val;
            });
            })

      ],),
    );
  }
}

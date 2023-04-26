import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:newapp/Add/item.dart';
import 'package:newapp/page/Add/button.dart';

class TaskPage extends StatefulWidget {

  
  const TaskPage({
    Key? key,
    required this.Goback,
  }) : super(key: key);
  final void Function(int) Goback;
  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  DateTime _selectedDate = DateTime.now();
  void _onDateChange(DateTime date) {
    this.setState(() {
      this._selectedDate = date;
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color.fromRGBO(242, 244, 255, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          widget.Goback(1);
                        },
                        child: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                      Icon(
                        Icons.search_rounded,
                        color: Colors.black,
                        size: 30,
                      )
                    ],
                  ),
                  SizedBox(height: 25),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Text(
                                "Apr,3 ",
                                style:TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    Button(label:"+add Task",onTap:()=>null)
                    ],
                  ),
                  SizedBox(height: 25,)
                   DatePicker(
                    DateTime.now(),
                    initialSelectedDate: this._selectedDate,
                    selectionColor: Color.fromARGB(255, 123, 0, 245),
                    onDateChange: this._onDateChange,
                  )
                ],
                ),
                 ),
                  Container(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Task",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(children: [
                      Item(
                          ProjectName: "Project", CompletedPercent: 30),
                      Item(
                          ProjectName: "Project", CompletedPercent: 30),
                      Item(
                          ProjectName: "Project", CompletedPercent: 30),
                      Item(
                          ProjectName: "Project", CompletedPercent: 30),
                      ]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
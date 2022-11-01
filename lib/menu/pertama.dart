import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PertamaPage extends StatefulWidget {
  const PertamaPage({super.key});

  @override
  State<PertamaPage> createState() => _PertamaPageState();
}

class _PertamaPageState extends 
State<PertamaPage> {
  DateTime? datetimenow, dateTimeTomorrow;
  var year, month, day;

  void dateTime_method(){
    datetimenow = new DateTime.now();
    dateTimeTomorrow = datetimenow!.add(const Duration(days: 1));
    year = dateTimeTomorrow!.year;
    month = dateTimeTomorrow!.month;
    day = dateTimeTomorrow!.day;

    var data = DateFormat('HH:mm:ss').format(datetimenow!);
    var data1 = DateFormat('dd MMMM yyyy').format(datetimenow!);
    var data2 = DateFormat('HH:mm').format(datetimenow!);
    var data3 = DateFormat('HH:mm:ss').format(datetimenow!);
    var data4 = DateFormat('yyyy-MM-dd').format(datetimenow!);
    var data5 = DateTime.now().add(Duration(days:-1));

    log("data 1 " + data1.toString());
    log("data 2 " + data2.toString());
    log("data 3 " + data3.toString());
    log("data 4 " + data4.toString());
    log("data 5 " + data5.toString());
    log("year " + year.toString());
    log("month " + month.toString());
    log("day " + day.toString());

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          MaterialButton(onPressed: (){dateTime_method();},
          child: Text("Test DatePicker"),),
          MaterialButton(onPressed: (){null;},
          child: Text("Text TimePicker"),),
          Text("Date"),
          Text("Time"),
        ],
      ),
    );
  }
}
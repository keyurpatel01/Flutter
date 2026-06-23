import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDateTime extends StatefulWidget {
  const MyDateTime({super.key});

  @override
  State<MyDateTime> createState() => _MyDateTimeState();
}

class _MyDateTimeState extends State<MyDateTime> {
  @override
  Widget build(BuildContext context) {
    var dateTime = DateTime.now();

    return Scaffold(
      appBar: AppBar(title: Text('DateTime'), backgroundColor: Colors.grey),
      body: Center(
        child: Column(
          children: [
            Text(
              'date : ${dateTime.day}/${dateTime.month}/${dateTime.year}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Time : ${dateTime.hour}:${dateTime.minute}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Format Date : ${DateFormat('yMMMMEEEEd').format(dateTime)}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                DateTime? date = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2021),
                  lastDate: DateTime(2026),
                );
                if (date != null) {
                  print('Date : ${date}');
                }
              },
              child: Text('Select Date', style: TextStyle(fontSize: 20)),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                TimeOfDay? time = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (time != null) {
                  print('Time : ${time}');
                }
              },

              child: Text('Select Time', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}

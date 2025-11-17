import 'package:consearch/UI/Calendar/Calendar.dart';
import 'package:flutter/material.dart';

class SampleCalendarPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromRGBO(253, 227, 213, 1)
      ),
      child: Calendar(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar>{
  DateTime? _selectedDay;
  late CalendarFormat _calendarFormat;
  late DateTime _focusedDay;

  @override
  void initState() {
    _focusedDay = DateTime.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(20),
      child: Material(
        child: TableCalendar(
          focusedDay: DateTime.now(),
          firstDay: DateTime(2021),
          lastDay: DateTime(2026),

          //For selecting a day
          selectedDayPredicate: (day) {
            return isSameDay(_selectedDay, day);
          },
          onDaySelected: (selectedDay, focusedDay){
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
            });
          },
          calendarStyle: CalendarStyle(

          ),
        ),
      ),
    );
  }

}
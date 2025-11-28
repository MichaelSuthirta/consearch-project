import 'package:flutter/material.dart';

class AppListView extends StatelessWidget{
  List<Widget> widgets;

  AppListView({
    super.key,
    required this.widgets
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.widgets.length,
      itemBuilder: (BuildContext context, int index){
        if(index < this.widgets.length){
          return widgets[index];
        }
      }
    );
  }
}
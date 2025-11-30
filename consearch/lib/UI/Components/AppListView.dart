import 'package:flutter/material.dart';

import '../../Tools/ConcertWidgetGenerator.dart';

class AppListView extends StatelessWidget{
  List<Widget> widgets;
  ConcertWidgetGenerator widgetGenerator = ConcertWidgetGenerator.getInstance();

  AppListView({
    super.key,
    required this.widgets
  });

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: widgetGenerator,
        builder: (BuildContext context, Widget? child){
          widgets = widgetGenerator.createNumberedListComp();

          return ListView.builder(
              itemCount: this.widgets.length,
              itemBuilder: (BuildContext context, int index){
                if(index < this.widgets.length){
                  return widgets[index];
                }
              }
          );
        }
    );
  }
}
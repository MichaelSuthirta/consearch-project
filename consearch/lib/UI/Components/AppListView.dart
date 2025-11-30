import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Tools/ConcertWidgetGenerator.dart';

class AppListView extends StatelessWidget{
  BuildContext parentContext;
  ConcertWidgetGenerator widgetGenerator = ConcertWidgetGenerator.getInstance();

  AppListView({
    super.key,
    required this.parentContext
  });

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: widgetGenerator,
        builder: (BuildContext context, Widget? child){
          List<Widget> widgets = widgetGenerator.createNumberedListComp(parentContext);

          return ListView.builder(
              itemCount: widgets.length,
              itemBuilder: (BuildContext context, int index){
                if(index < widgets.length){
                  return widgets[index];
                }
              }
          );
        }
    );
  }
}
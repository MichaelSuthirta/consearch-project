import 'package:consearch/UI/Components/AppListView.dart';
import 'package:flutter/src/widgets/framework.dart';

class ConcertListView extends AppListView{
  ConcertListView({required super.parentContext});

  @override
  List<Widget> getWidgets() {
    return super.widgetGenerator.createConcertListWidgets();
  }
}
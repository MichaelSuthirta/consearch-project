import 'package:consearch/UI/Components/AppListView.dart';
import 'package:flutter/src/widgets/framework.dart';

class ConcertListView extends AppListView{
  String category;
  ConcertListView({required super.parentContext, required this.category});

  @override
  List<Widget> getWidgets() {
    return super.widgetGenerator.createConcertListWidgets(category, super.parentContext);
  }
}
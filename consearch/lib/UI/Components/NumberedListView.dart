import 'package:consearch/UI/Components/AppListView.dart';
import 'package:flutter/src/widgets/framework.dart';

class NumberedListView extends AppListView{
  NumberedListView({required super.parentContext});

  @override
  List<Widget> getWidgets() {
    return super.widgetGenerator.createNumberedListComp(super.parentContext);
  }
}
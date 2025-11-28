import 'package:flutter/material.dart';

class TwoColumnsGrid extends StatelessWidget{
  final List<Widget> widgetList;

  const TwoColumnsGrid({
    super.key,
    required this.widgetList});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height / 7),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ),

        itemCount: 4,
        itemBuilder: (BuildContext context, int index){
          if(index < 4){
            return widgetList[index];
          }
        }
    );
  }
}
import 'package:consearch/UI/Components/ConcertListView.dart';
import 'package:consearch/UI/CreamBackground.dart';
import 'package:flutter/material.dart';

class ConcertListPage extends StatelessWidget{
  String category;

  ConcertListPage({
    super.key,
    required this.category
  });

  @override
  Widget build(BuildContext context) {
    return CreamBackground(
        content: Flex(
          direction: Axis.vertical,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height / 9,
              ),
              child: Flex(
                direction: Axis.vertical,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 20,
                    decoration: BoxDecoration(
                      color:
                    ),
                    child: Text(category),
                  ),
                  Container(
                    child: Text("BANDUNG"),
                  )
                ],
              )
            ),

            //List
            Expanded(
                child: ConcertListView(
                  parentContext: context,
                  category: category,
                )
            )

          ],
        )
    );
  }

}
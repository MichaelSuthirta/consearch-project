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
              child: Container(
                width: double.maxFinite,
                color: Colors.grey,
              ),
            ),
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
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
        content: ConcertListView(parentContext: context)
    );
  }

}
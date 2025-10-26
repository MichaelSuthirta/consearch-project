import 'package:consearch/UI/DisplayConstants.dart';
import 'package:consearch/UI/TextContainers/TicketPreview.dart';
import 'package:flutter/material.dart';

class SamplePage extends StatelessWidget{
  const SamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(253, 227, 213, 1)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TicketPreview(
            title: "Enhypen",
            performer: "Blue",
            date: "18 August 2024",
            location: "Mall Paris Van Java Bandung Atrium 4A Lantai 2",
          )
        ],
      ),
    );
  }

}
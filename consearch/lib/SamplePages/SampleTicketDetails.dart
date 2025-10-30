import 'package:consearch/UI/DisplayConstants.dart';
import 'package:consearch/UI/TextContainers/TicketPass.dart';
import 'package:consearch/UI/TextContainers/TicketPreview.dart';
import 'package:flutter/material.dart';

class SampleTicketDetails extends StatelessWidget{
  const SampleTicketDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromRGBO(253, 227, 213, 1)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TicketPass()
        ],
      ),
    );
  }

}
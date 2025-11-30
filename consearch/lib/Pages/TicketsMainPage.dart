import 'package:consearch/UI/CreamBackground.dart';
import 'package:flutter/material.dart';

class TicketsMainPage extends StatelessWidget{
  const TicketsMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CreamBackground(
      content: Text("Kamu belum memiliki tiket."),
    );
  }
}
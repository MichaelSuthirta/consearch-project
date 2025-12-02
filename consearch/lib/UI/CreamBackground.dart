import 'package:consearch/Pages/MainMenuPage.dart';
import 'package:consearch/Pages/TicketsMainPage.dart';
import 'package:flutter/material.dart';

import 'DisplayConstants.dart';

class CreamBackground extends StatelessWidget{
  late final Widget content;
  CreamBackground({super.key, required this.content});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: DisplayConstants.mainBgColor
          ),
          child: SafeArea(
            child: content,
          )
        ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        backgroundColor: const Color.fromRGBO(224, 208, 204, 1),
        onTap: (index){
          if(index == 0){
            Navigator.push(
                context, MaterialPageRoute(
                builder: (context) => MainMenuPage()
              )
            );
          }
          else if(index == 1){
            Navigator.push(
                context, MaterialPageRoute(
                builder: (context) => TicketsMainPage()
              )
            );
          }
          else {}
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/UI/Icons/Home.png"),
            label: "Home",
            backgroundColor: const Color.fromRGBO(224, 208, 204, 1)
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/UI/Icons/Ticket.png"),
            label: "Tickets",
            backgroundColor: const Color.fromRGBO(224, 208, 204, 1)
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/UI/Icons/Profile.png"),
            label: "Profile",
            backgroundColor: const Color.fromRGBO(224, 208, 204, 1)
          ),
        ],
      ),
    );
  }
}
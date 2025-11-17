import 'package:flutter/material.dart';

class AppSearchBar extends StatefulWidget{
  const AppSearchBar({super.key});

  @override
  State<AppSearchBar> createState() => _searchBarState();
}

class _searchBarState extends State<AppSearchBar>{
  final Color bgColor = const Color.fromRGBO(253, 227, 213, 1);

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      leading: Image(image: Image.asset("assets/UI/Icons/Search_Icon.png").image,),
      hintText: "Search for something here...",
      hintStyle: WidgetStateProperty.resolveWith(
          (state){
            return state.contains(WidgetState.focused) ?
                TextStyle(
                  color: Colors.black.withOpacity(0.2),
                  fontFamily: "Lexend",
                  fontSize: 15
                ) :
                TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontFamily: "Lexend",
                    fontSize: 15
                );
          }
      ),
      backgroundColor: WidgetStateProperty.resolveWith(
          (state){
            return state.contains(WidgetState.focused) ?
              const Color.fromRGBO(224, 208, 204, 0.8) :
              const Color.fromRGBO(224, 208, 204, 1);
          }
      ),
    );
  }

}
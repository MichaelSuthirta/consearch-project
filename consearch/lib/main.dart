import 'package:consearch/UserAuthPages/RegisterPage.dart';
import 'package:flutter/material.dart';
import '/UI/GradientBackground.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Application root
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Consearch',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void navigate(DragEndDetails details){
    if(details.primaryVelocity!.compareTo(0) == -1){
      Navigator.push(
          context, MaterialPageRoute(
            builder: (context) => RegisterPage()
          )
      );
    }
    else{
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //To detect scroll. When scroll is detected, navigate to next page.
      onVerticalDragEnd: (DragEndDetails details) => navigate(details),
      // onTap: (){
      //   Navigator.push(
      //       context, MaterialPageRoute(
      //         builder: (context) => RegisterPage()
      //       )
      //   );
      // },
      child: GradientBackground(
          content: Flex(
            direction: Axis.vertical,
            children: [
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "CONSEARCH",
                      style: TextStyle(
                          fontFamily: "Lexend Mega",
                          fontWeight: FontWeight.w700,
                          fontSize: 40
                      ),
                    ),
                    Text(
                      "YOUR DAILY DOSE OF CONCERT",
                      style: TextStyle(
                          fontFamily: "Lexend Mega",
                          fontWeight: FontWeight.w700,
                          fontSize: 10
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  alignment: Alignment.bottomCenter,
                  child: const Column(
                    children: [
                      Text(
                        "SCROLL TO GET STARTED",
                        style: TextStyle(
                            fontFamily: "Lexend",
                            fontWeight: FontWeight.w700,
                            fontSize: 10
                        ),
                      ),
                      Image(
                        image: AssetImage("assets/UI/Icons/Arrow Down.png"),
                        width: 16.34,
                        height: 20,
                        opacity: AlwaysStoppedAnimation(0.45),
                      ),
                      Image(
                        image: AssetImage("assets/UI/Icons/Arrow Down.png"),
                        width: 21.25,
                        height: 26,
                        opacity: AlwaysStoppedAnimation(0.75),
                      ),
                      Image(
                          image: AssetImage("assets/UI/Icons/Arrow Down.png"),
                          width: 27.91,
                          height: 34.16
                      )
                    ],
                  )
              )
            ],
          )
      )
    );
  }
}


import 'package:flutter/material.dart';

class StartSection extends StatelessWidget{
  const StartSection({super.key});

  void doIt(){
    print("hejka");
  }

  @override
  Widget build(context){
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/quiz-logo.png",
              height: 270,
              width: 270,
            ),
            const SizedBox(
              height: 50,
              width: 50,
            )
            ,
            const Text(
              "Learn Flutter the fun way!",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20,),
            ),
            const SizedBox(
              height: 25,
              width: 25,
            )
            ,
            OutlinedButton(onPressed: doIt,child: const Text("Start quiz",
             style: TextStyle(color: Colors.white, fontSize: 15),),)
          ],
        ),
      );
  }


}
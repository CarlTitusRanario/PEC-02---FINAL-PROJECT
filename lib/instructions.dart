import 'package:flutter/material.dart';


class help extends StatelessWidget {
  const help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            child:  Center(
              child: Column(
                children: const [
                  SizedBox(height: 20.0,),

                  Text('RULES!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 60.0,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'ARCADE',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 40.0,),
                  Text('1. Guess if the next card is higherorequal OR lower than the current card',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize: 28.0,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'ARCADE',
                    fontWeight: FontWeight.bold,
                     ),
                  ),
                  SizedBox(height: 20.0,),
                  Text('2. If the guess is correct he/she will gain 1 point',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28.0,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'ARCADE',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Text('VALUES: A=1.............K=13',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'ARCADE',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            decoration: const BoxDecoration(
            gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.purple, Colors.orange]),
            ),
        ),
      ),
    );
  }
}

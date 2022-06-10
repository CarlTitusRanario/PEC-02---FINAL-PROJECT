import 'package:aangel/instructions.dart';
import 'package:flutter/material.dart';
import '2ndScreen.dart';

class mainmenu extends StatefulWidget {
  const mainmenu({Key? key}) : super(key: key);

  @override
  State<mainmenu> createState() => _mainmenuState();
}

class _mainmenuState extends State<mainmenu> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.purple, Colors.orange]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 40.0,),
              const Text('WELCOME!',
                style: TextStyle(
                  fontSize:80.0,
                  fontFamily: 'TEKO',
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 90.0),
              const Text('<Hi-Low Card Game>',
                style: TextStyle(
                  fontSize:40.0,
                  fontFamily: 'ARCADE',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 90.0,),
              FloatingActionButton(onPressed: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const gameproper()),
                );

              },
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      'START',
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                    Icon(Icons.play_arrow),
                  ],
                ),
                backgroundColor: Colors.black54,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.black, width: 3)
                ),
              ),
              Image.asset('assets/images/backcard.png',
                height: 190.0,
                width:  100.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                IconButton(
                    onPressed:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const help()),
                      );
                    },
                    icon: Icon(Icons.help),
                  iconSize: 40.0,
                ),
                  SizedBox(width: 20.0,),
                ],
              ),
            SizedBox(height: 4.0,),
            ],
          ),
        ),
      ),
    );
  }
}

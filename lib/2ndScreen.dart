import 'package:flutter/material.dart';
import 'dart:math';

class gameproper extends StatefulWidget {
  const gameproper({Key? key}) : super(key: key);

  @override
  State<gameproper> createState() => _gameproper();
}

class _gameproper extends State<gameproper> {
  String generateRandomString(int len) {
    var r = Random();
    const _chars = 'CDHS';
    return List.generate(len, (index) => _chars[r.nextInt(_chars.length)])
        .join();
  }

  int randomNumber(int min, int max) {
    int random = min + Random().nextInt(max - min);
    return random;
  }

  int attempts = 0;
  int score = 0;
  int cV = 0;
  var letter = 'C';
  int cV1 = 0;
  var cL1 = 'C';
  int cV2 = 0;
  var cL2 = 'C';
  int cV3 = 0;
  var cL3 = 'C';
  int cV4 = 0;
  var cL4 = 'C';
  int cV5 = 0;
  var cL5 = 'C';
  int cV6 = 0;
  var cL6 = 'C';

  void avoidFirstErorr() {
    if (attempts == 0) {
      setState(() {
        cV1 = randomNumber(1, 13);
        cL1 = generateRandomString(1);
      });
    }

  }

  void restart() {
    setState(() {
      cV6 = 0;
      cV5 = 0;
      cV4 = 0;
      cV3 = 0;
      cV2 = 0;
      cL6 = 'C';
      cL5 = 'C';
      cL4 = 'C';
      cL3 = 'C';
      cL2 = 'C';
      cV = 0;
      letter = 'C';
      score = 0;
      attempts = 0;
    });
  }

  void transfer() {
    cV6 = cV5;
    cL6 = cL5;

    cV5 = cV4;
    cL5 = cL4;

    cV4 = cV3;
    cL4 = cL3;

    cV3 = cV2;
    cL3 = cL2;

    cV2 = cV1;
    cL2 = cL1;

    cV1 = cV;
    cL1 = letter;

    cV = 0;
    letter = 'C';
  }

  showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.blueGrey[50],
          title: const Center(
              child: Text(
            'YOU WIN!!!',
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          content: Text(" Proceed ?"),
          actions: <Widget>[
            FlatButton(
              child: Text("YES"),
              onPressed: () {
                setState(() {
                  transfer();
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  showAlertGAmeover(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.blueGrey[50],
          title: const Center(
              child: Text(
            'WRONG!!!',
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          content: const Text("Try Again?"),
          actions: <Widget>[
            FlatButton(
              child: Text("YES"),
              onPressed: () {
                setState(() {
                  restart();
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void greatEqual() {
    if (cV >= cV1) {
      score++;
      Future.delayed(Duration(milliseconds: 800), () {
        showAlert(context);
      });
    } else {
      Future.delayed(Duration(milliseconds: 800), () {
        showAlertGAmeover(context);
      });
    }
  }

  void lower() {
    if (cV < cV1) {
      score++;
      Future.delayed(Duration(milliseconds: 800), () {
        showAlert(context);
      });
    } else {
      Future.delayed(Duration(milliseconds: 800), () {
        showAlertGAmeover(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    avoidFirstErorr();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        body: Stack(children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.3,
              child: Image.asset(
                'assets/images/background2.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Score: $score',
                  style: TextStyle(
                    color: Colors.grey[100],
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'pcsenior',
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 100.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/$cV2$cL2.png')),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                      ),
                      Container(
                        height: 100.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/$cV3$cL3.png')),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                      ),
                      Container(
                        height: 100.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/$cV4$cL4.png')),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                      ),
                      Container(
                        height: 100.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/$cV5$cL5.png')),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                      ),
                      Container(
                        height: 100.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/$cV6$cL6.png')),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                      ),
                    ]),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 240.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              //fit: BoxFit.fill,
                              image: AssetImage('assets/images/$cV1$cL1.png')),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                      ),
                      Container(
                        height: 240.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              //fit: BoxFit.fill,
                              image:
                                  AssetImage('assets/images/$cV$letter.png')),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                      ),
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      'current card',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      width: 27.0,
                    ),
                    Text(
                      'next card',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            gradient: const LinearGradient(
                              colors: [
                                Colors.black87,
                                Colors.deepOrange,
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            )),
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              attempts++;
                              cV = randomNumber(1, 13);
                              letter = generateRandomString(1);
                              greatEqual();
                            });
                          },
                          child: const Text(
                            'HIGHER\nor\nEQUAL',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'TEKO',
                              color: Colors.white70,
                              letterSpacing: 2.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            gradient: const LinearGradient(
                              colors: [
                                Colors.black87,
                                Colors.deepOrange,
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            )),
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              attempts++;
                              cV = randomNumber(1, 13);
                              letter = generateRandomString(1);
                              lower();
                            });
                          },
                          child: const Text(
                            ' \nLOWER\n ',
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'TEKO',
                              color: Colors.white70,
                              letterSpacing: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ]),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

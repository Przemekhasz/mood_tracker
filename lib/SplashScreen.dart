import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mood_tracker/HomePage.dart';
import 'package:mood_tracker/WelcomeScreen.dart';

import 'main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
        const Duration(seconds: 2),
        () => {
              if (haveLoaded())
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => const WelcomeScreen()))
                }
              else
                {
                  // todo load data
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => const HomePage()))
                }
            });

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                color: Color(0xffffffff),
                gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [Color(0xff06589c), Color(0xff000000)])),
          ),
          Align(
              alignment: FractionalOffset.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Icon(Icons.people, color: Colors.white, size: 80.0),
                  const Padding(padding: EdgeInsets.only(top: 15.0)),
                  Text(Strings.appTitle,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32.0,
                        color: Colors.white,
                      ))),
                  const Padding(padding: EdgeInsets.only(top: 5.0)),
                  Text('Aplikacja do ??ledzenia \n twojego nastroju',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ))),
                ],
              )),
          Positioned(
              left: 0,
              bottom: 35,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                child: Text("??adowanie...",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 18.0,
                      color: Colors.white,
                    ))),
              ))
        ],
      ),
    );
  }

  haveLoaded() {
    return true;
  }
}

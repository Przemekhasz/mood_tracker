import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

class ChartsScreen extends StatefulWidget {
  const ChartsScreen({Key? key}) : super(key: key);

  @override
  _ChartsScreenState createState() => _ChartsScreenState();
}

class _ChartsScreenState extends State<ChartsScreen> {
  @override
  Widget build(BuildContext context) {
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
                    colors: [Color(0xff102047), Color(0xff000000)])),
          ),
          Align(
              alignment: FractionalOffset.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Icon(Icons.show_chart, color: Colors.white, size: 80.0),
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
                  Text('Statystyki',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ))),
                ],
              )),
        ],
      ),
    );
  }

  haveLoaded() {
    return true;
  }
}

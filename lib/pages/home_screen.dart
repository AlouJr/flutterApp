import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/back.jpg'), fit: BoxFit.cover),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top:100.0),
              child: Text(
                'Welcome to the Book Club',
                style: GoogleFonts.pacifico(fontSize: 30, color: Colors.grey[600]),
                ),
              ),
              RaisedButton(
                elevation: 5,
                color: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.white38)
                  ),
                onPressed: null,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children:[
                    Text(
                      'Commencer', 
                      style: GoogleFonts.dancingScript(
                        fontSize: 20,
                        color: Colors.white
                      ),
                      ),
                    Icon(Icons.arrow_forward, color: Colors.white,)
                  ]
                ),
              ),
              SizedBox(child: Text(
                'Find the best book that can definitly improve your life',
                style: GoogleFonts.dancingScript(
                  fontSize:20,
                  color: Colors.white
                ),
                ),
              )
            ],
          )
        ],
        )
      ),
    );
  }
}




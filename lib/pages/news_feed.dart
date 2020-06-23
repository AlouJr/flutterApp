import 'package:flutter/material.dart';
class NewsFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
      ),
      backgroundColor: Colors.grey[200],
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0)
                ),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      child: Image.asset('assets/images/first.jpg'),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0)
                    ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Reflechissez et devenez riche')
                            ],
                          ),
                          CircleAvatar(backgroundImage: AssetImage('assets/images/Napoleon-Hill.jpg'),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          );
        },
        itemCount: 15
      ),
    );
  }
}
import 'package:flutter/material.dart';
import '../../model/eachFam.dart';
class DisplayPhotoAt extends StatelessWidget {
  final int index;
  DisplayPhotoAt(this.index);
  @override
    Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: Column(
        children: <Widget>[
          Center(
            child: Card(
              color: Colors.lightBlue,
              elevation: 5,
              child: Container(
                 height:400,
                margin: EdgeInsets.only(top: 30, bottom: 10),
                decoration: BoxDecoration(   
                  image: DecorationImage(
                      image: AssetImage(atinafus[index].imageUrl),
                  
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
  

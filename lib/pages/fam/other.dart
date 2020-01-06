import 'package:flutter/material.dart';
import '../../model/eachFam.dart';
import './photo_other.dart';

class Other extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Theme.of(context).primaryColor,
          ),
        ),
        body: ListView.builder(
          itemCount: others.length,
          itemBuilder: (ctx, i) => DisplayPhotoOthe(i),
        ));
  }
}

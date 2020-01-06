import 'package:flutter/material.dart';
import '../../model/eachFam.dart';
import './disp_photo_ya.dart';
class Ya_Photo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
                itemCount: yayehs.length,
                itemBuilder: (ctx, i) => DisplayPhotoYa(i),
              );
   
  }
}
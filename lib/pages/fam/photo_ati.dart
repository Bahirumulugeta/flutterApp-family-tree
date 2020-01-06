import 'package:flutter/material.dart';
import '../../model/eachFam.dart';
import './disp_photo_at.dart';
class Ati_Photo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
                itemCount: atinafus.length,
                itemBuilder: (ctx, i) => DisplayPhotoAt(i),
              );
   
  }
}
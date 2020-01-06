import 'package:flutter/material.dart';
import '../../model/eachFam.dart';
import './disp_photo_ti.dart';
class Tibe_Photo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
                itemCount: tibebus.length,
                itemBuilder: (ctx, i) => DisplayPhotoTi(i),
              );
   
  }
}
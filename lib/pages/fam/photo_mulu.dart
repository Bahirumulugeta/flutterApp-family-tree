import 'package:flutter/material.dart';
import '../../model/eachFam.dart';
import './disp_photo_mu.dart';
class Mulu_Photo extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
                itemCount: mulugetas.length,
                itemBuilder: (ctx, i) => DisplayPhotoMu(i),
              );
   
  }
}
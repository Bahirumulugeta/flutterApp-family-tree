import 'package:flutter/material.dart';
import '../../model/eachFam.dart';
import './list_disp_at.dart';
class Ati_List extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
                itemCount: atinafus.length,
                itemBuilder: (ctx, i) => DisplayListAt(i),
              );
   
  }
}
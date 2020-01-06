import 'package:flutter/material.dart';
import '../../model/eachFam.dart';
import './list_disp_ya.dart';
class Ya_List extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
                itemCount: yayehs.length,
                itemBuilder: (ctx, i) => DisplayListYa(i),
              );
   
  }
}
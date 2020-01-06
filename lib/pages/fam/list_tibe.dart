import 'package:flutter/material.dart';
import '../../model/eachFam.dart';
import './list_disp_ti.dart';
class Tibe_List extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
                itemCount: tibebus.length,
                itemBuilder: (ctx, i) => DisplayListTi(i),
              );
   
  }
}
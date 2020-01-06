import 'package:flutter/material.dart';
import './list_disp_mu.dart';
import '../../model/eachFam.dart';

class Mulu_List extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
                itemCount: mulugetas.length,
                itemBuilder: (ctx, i) => DisplayListMu(i),
              );
   
  }
}
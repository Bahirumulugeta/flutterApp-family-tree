import 'package:flutter/material.dart';
import './list_mulu.dart';
import './photo_mulu.dart';
class Mulugeta extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 
   return DefaultTabController(
     length: 2,
     child: Scaffold(
         backgroundColor: Colors.cyan,
         appBar: AppBar(
          title: Text('Mulugeta'),
          bottom: TabBar(
            tabs:<Widget>[
              Tab(
                icon: Icon(Icons.create),
                text: 'Photos',
              ),
              Tab(
                icon: Icon(Icons.list),
                text: 'Photo List',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
           Mulu_Photo(),
           Mulu_List()
          ],
        ),
      )
      
   );
  }
}
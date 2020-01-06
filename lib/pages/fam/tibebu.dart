import 'package:flutter/material.dart';
import './list_tibe.dart';
import './photo_tibe.dart';
class Tibebu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 
   return DefaultTabController(
     length: 2,
     child: Scaffold(
        backgroundColor: Colors.cyan,
         appBar: AppBar(
          title: Text('Tibebu'),
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
           Tibe_Photo(),
           Tibe_List()
          ],
        ),
      )
      
   );
  }
}
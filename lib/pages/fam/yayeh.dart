import 'package:flutter/material.dart';
import './list_ya.dart';
import './photo_ya.dart';
class Yayeh extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 
   return DefaultTabController(
     length: 2,
     child: Scaffold(
         backgroundColor: Colors.cyan,
         appBar: AppBar(
          title: Text('Yayeh'),
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
           Ya_Photo(),
           Ya_List()
          ],
        ),
      )
      
   );
  }
}
import 'package:flutter/material.dart';
import './list_ati.dart';
import './photo_ati.dart';
class Atinafu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 2,
     child: Scaffold(
         backgroundColor: Colors.cyan,
         appBar: AppBar(
          title: Text('Atinafu'),
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
           Ati_Photo(),
           Ati_List()
          ],
        ),
      )
      
   );
  }
}
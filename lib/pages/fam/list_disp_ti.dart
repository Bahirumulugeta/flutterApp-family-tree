import 'package:flutter/material.dart';
import '../../model/eachFam.dart';
import './disp_list_photo.dart';
class DisplayListTi extends StatelessWidget{
  final int index;
  DisplayListTi(this.index);
  Widget _buildEditButton(BuildContext context,String image, String title,String description){
  
          return IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                     Navigator.push(
                      context,
                       MaterialPageRoute(
                        builder: (BuildContext context) => DisplayListPhoto(image,title,description),
                       )
                     
                      );
                    
                  },
                );
  }
  @override
  Widget build(BuildContext context) {
     return Container(
     child:Column(
          children: <Widget>[
            ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(tibebus[index].imageUrl),
                  ),
                  title: Text(tibebus[index].title),
                 // subtitle: Text('Date: 12/12/2012'),
                  trailing: _buildEditButton(context,tibebus[index].imageUrl,tibebus[index].title,tibebus[index].description),
                ),
                Divider(),
          ],
     ),
    );
  }
}
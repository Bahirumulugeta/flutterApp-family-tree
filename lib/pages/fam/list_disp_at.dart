import 'package:flutter/material.dart';
import './disp_list_photo.dart';
import '../../model/eachFam.dart';
class DisplayListAt extends StatelessWidget{final int index;
  DisplayListAt(this.index);
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
                    backgroundImage: AssetImage(atinafus[index].imageUrl),
                  ),
                  title: Text(atinafus[index].title),
                 // subtitle: Text('Date: 12/12/2012'),
                  trailing: _buildEditButton(context,atinafus[index].imageUrl,atinafus[index].title,atinafus[index].description),
                ),
                Divider(),
          ],
     ),
    );
  }
}
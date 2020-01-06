import 'package:flutter/material.dart';
//import 'package:http/http.dart';
import '../pages/home.dart';

class Auth extends StatelessWidget{
 
  @override
  Widget build(BuildContext context) {
    
     return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        color: Theme.of(context).primaryColor,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            FlatButton(
              child: Text(
                'Getting Started',
                style: TextStyle(fontSize: 20),
              ),
              shape: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white,width: 2),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.all(5),
              textColor: Colors.white,
              onPressed: (){
              Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomePage(),
                      ),
                    );
              },
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
       elevation: 0,
       iconTheme: IconThemeData(color:Theme.of(context).primaryColor,),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                elevation: 5,
                child: Container(
                  height: MediaQuery.of(context).size.width,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/111.jpg'),
                    ),
                  ),
                
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Bahiru Mulugeta',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 10,
            ),

            Text(
              '=> current status : 3rd year software Engineering student at aastu',
              style: TextStyle(
                fontSize: 12,
                height: 1.1,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Year : 2012 E.c',
              style: TextStyle(
                fontSize: 15,
                height: 1.1,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Email: bahirumulugeta1@gmail.com',
              style: TextStyle(
                fontSize: 15,
                height: 1.1,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: <Widget>[
          Expanded(
            child: RaisedButton(
              padding: EdgeInsets.only(top: 20,bottom: 20,),
              onPressed: () {},
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                 
                 
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

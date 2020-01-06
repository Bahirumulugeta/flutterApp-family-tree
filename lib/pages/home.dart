import 'package:flutter/material.dart';
import '../pages/fam/atinafu.dart';
import '../pages/fam/mulugeta.dart';
import '../pages/fam/other.dart';
import '../pages/fam/tibebu.dart';
import '../pages/fam/yayeh.dart';
import 'package:flutter/rendering.dart';
import 'about.dart';
import 'fam/disp_list_photo.dart';
import 'familyChine.dart';

class HomePage extends StatelessWidget {
  Widget _buildSideDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => DisplayListPhoto(
                              'images/logologo.jpg',
                              'የአባ መኮነን ሰፈሮች',
                              'ይህ app የተሰራው እኛ የአባ መኮነን ሰፈር ልጆች የ አባቶቻችን የእርስ በርስ ፍቅር ሳናጎድል ለማስቀጠል ፤ የኛንም የ አብሮነት ትስስር ለልጆቻችን እናዎርስ ዘንድ እና ለልጆቻችንም መልካም ታሪክ እንሰጣቸው ዘንድ ነው ። '),
                        ),
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(top: 30, bottom: 10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('images/logo.jpg'),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Text(
                    'የኛ ሰፈር',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.add_comment),
            title: Text('More Photo'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => Other(),
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('family tree'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => FamilyChine(),
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.sentiment_satisfied),
            title: Text('About'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => About(),
                ),
              );
            },
          ),
          Divider(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('የኛ ሰፈር'),
        actions: <Widget>[
          // IconButton(
          //    icon: Icon(Icons.more),
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (BuildContext context) => About(),
          //       ),
          //     );
          //   },
          // ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      drawer: _buildSideDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Container(
              height: 950,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Tibebu(),
                          ));
                    },
                    child: Card(
                      elevation: 5,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 230,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  topLeft: Radius.circular(5)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('images/teba.jpg'),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 210,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Tibebu Mekonnen',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 200,
                                  child: Text(
                                      'ጥበቡ መኮነን : የአባ መኮነን የመጀመሪያ ልጅ እና ከ ቤተሰቡም ትልቁ ነው። አሁን ላይ 72 ዓመት አካባቢ ይሆነዋል። የተወለደው ሻፍ በሚባል የ ቅድመ አያቶቻችን እርስት በሆነችው በረሀማ ቦታ ቢሆንም በ 7 ዓመታቸው ወደ የርግን ማሪያም በመምጣታቸው ምክኒያት የ አደገው እና የሚኖረው እዚሁ የርግን ነው ።'),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Atinafu(),
                          ));
                    },
                    child: Card(
                      elevation: 5,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 210,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  topLeft: Radius.circular(5)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('images/atinafus.jpg'),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Atinafu Mekonnen',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 200,
                                  child: Text(
                                      'አጥናፍ መኮነን : የአባ መኮነን ሶስተኛ  ልጅ እና ከ ቤተሰቡም ከ ጥበቡ እና ከ ይመኙሽ ቀጥሎ የተወለደ ነው። አሁን ላይ 66 ዓመት አካባቢ ይሆነዋል። እሱም የተወለደው ሻፍ ቢሆንም በ 1 ዓመቱ ወደ የርግን ማሪያም በመምጣቱ ምክኒያት የ አደገው እና የሚኖረው እዚሁ ነው ።'),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Mulugeta(),
                          ));
                    },
                    child: Card(
                      elevation: 5,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 200,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  topLeft: Radius.circular(5)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('images/father.jpg'),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Mulugeta Mekonnen',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 200,
                                  child: Text(
                                      'ሙሉጌታ መኮነን : የአባ መኮነን አምስተኛ  ልጅ እና ከ ቤተሰቡም ከ ጥበቡ፣ይመኙሽ፣አጥናፍ እና ከ እሰይነሽ  ቀጥሎ የተወለደ ነው። አሁን ላይ 60 ዓመት አካባቢ ሲሆነው የተወለደው እና የ አደገው የሚኖረውም እዚሁ የርግን ነው ።'),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Yayeh(),
                          ));
                    },
                    child: Card(
                      elevation: 5,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 200,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  topLeft: Radius.circular(5)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('images/asme_zele.jpg'),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            height: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Yayeh Mekonnen',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 200,
                                  child: Text(
                                      'ያየህ መኮነን : የአባ መኮነን ስድስተኛ ልጅ እና ከ ቤተሰቡም የመጨርሻ  ልጅ ነው። አሁን ላይ 57 ዓመት አካባቢ ሲሆነው የተወለደው እና የ አደገው የሚኖረውም እዚሁ የርግን ነው ።'),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

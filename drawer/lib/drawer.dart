import 'package:flutter/material.dart';

class Myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return drawerState();
  }
}

class drawerState extends State<Myapp> {
  List<String> controlled_image_display = [
    './images/1.jpeg',
    './images/2.jpeg',
    './images/3.jpeg',
    './images/4.jpeg',
    './images/5.jpeg',
    './images/6.jpeg',
    './images/7.jpeg',
    './images/New7Wonders.jpg'
  ];
  List<String> controlled_text_display = [
    'Built between the 5th century B.C. and the 16th century, the Great Wall of China is a stone-and-earth fortification created to protect the borders of the Chinese Empire from invading Mongols.',
    'The Art Deco-style Christ the Redeemer statue has been looming over the Brazilians from upon Corcovado mountain in an awe-inspiring state of eternal blessing since 1931.',
    'Machu Picchu, an Incan city of sparkling granite precariously perched between 2 towering Andean peaks, is thought by scholars to have been a sacred archaeological center for the nearby Incan capital of Cusco.',
    'The genius and adaptability of Mayan culture can be seen in the splendid ruins of Chichen Itza.',
    'Romes, if not Italys, most enduring icon is undoubtedly its Colosseum. Built between A.D. 70 and 80 A.D., it was in use for some 500 years.',
    'A mausoleum commissioned for the wife of Mughal Emperor Shah Jahan, the Taj Mahal was built between 1632 and 1648. Considered the most perfect specimen of Muslim art in India, the white marble structure actually represents a number of architectural styles, including Persian, Islamic, Turkish and Indian.',
    'Declared a World Heritage Site in 1985, Petra was the capital of the Nabataean empire of King Aretas IV, and likely existed in its prime from 9 B.C. to A.D. 40. The members of this civilization proved to be early experts in manipulating water technology, constructing intricate tunnels and water chambers, which helped create an pseudo-oasis.',
    '7 wonders of the world'
  ];

  int image_index = 7;
  int text_index = 7;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Drawer app'),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: 0,
              backgroundColor: Colors.blue,
              items: [
                BottomNavigationBarItem(
                  icon: new Icon(Icons.home),
                  title: new Text('Home'),
                ),
                BottomNavigationBarItem(
                  icon: new Icon(Icons.mail),
                  title: new Text('Messages'),
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), title: Text('Profile'))
              ],
            ),
            drawer: Drawer(
                child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text('Kumar Shivam'),
                  accountEmail: Text('shivamk@geekyants.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.lime,
                    child: Text('s'),
                  ),
                ),
                ListTile(
                  title: Text('7 wonders'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    setState(() {
                      image_index = 7;
                      text_index = 7;
                    });
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('Great Wall of China(China)'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    setState(() {
                      image_index = 0;
                      text_index = 0;
                    });
                  },
                ),
                ListTile(
                  title: Text('Christ the Redeemer Statue (Rio de Janeiro)'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    setState(() {
                      image_index = 1;
                      text_index = 1;
                    });
                  },
                ),
                ListTile(
                  title: Text('Machu Picchu (Peru)'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    setState(() {
                      image_index = 2;
                      text_index = 2;
                    });
                  },
                ),
                ListTile(
                  title: Text('Chichen Itza (Yucatan Peninsula, Mexico)'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    setState(() {
                      image_index = 3;
                      text_index = 3;
                    });
                  },
                ),
                ListTile(
                  title: Text('The Roman Colosseum (Rome)'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    setState(() {
                      image_index = 4;
                      text_index = 4;
                    });
                  },
                ),
                ListTile(
                  title: Text('Taj Mahal (Agra, India)'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    setState(() {
                      image_index = 5;
                      text_index = 5;
                    });
                  },
                ),
                ListTile(
                  title: Text('Petra (Jordan)'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    setState(() {
                      image_index = 6;
                      text_index = 6;
                    });
                  },
                )
              ],
            )),
            body: SingleChildScrollView(
                child: Container(
                    child: Column(
              children: <Widget>[
                Image.asset(controlled_image_display[image_index]),
                Text(
                  controlled_text_display[image_index],
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'DancingScript',
                      fontWeight: FontWeight.bold),
                )
              ],
            )))));
  }
}

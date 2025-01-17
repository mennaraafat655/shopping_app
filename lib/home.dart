import 'package:flutter/material.dart';
import 'package:shopping_app/navbar/home_page.dart';

import 'package:shopping_app/navbar/profile.dart';
import 'package:shopping_app/navbar/setting.dart';

class NavPage extends StatefulWidget {
  const NavPage({Key? key}) : super(key: key);

  @override
  State<NavPage> createState() => _NavPage();
}

class _NavPage extends State<NavPage> {
  int selectedIndex = 0;
  List<Widget> pages = [MyHomePage(), Profile(), Setting()];

  // list of hot offers images

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.deepPurple,
        title: Center(
            child: Text(
          'BazaarVibe', //app name
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
              fontFamily: 'Lora'), //google font Lora
        )),
      ),
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        color: Colors.white,
        child: ListView(
          children: [
            // SizedBox(
            //   height: 100,
            // ),
            ListTile(
              //leading: Icon(Icons.circle, color: Colors.white),
              title: Text(
                "Profile",
                style: TextStyle(
                  fontFamily: "Lora",
                  fontSize: 18,
                ),
              ),
              subtitle: Text("Edit profile", style: TextStyle()),
              trailing: Icon(
                Icons.account_circle,
              ),
            ),
            ListTile(
              //leading: Icon(Icons.circle, color: Colors.white),
              title: Text(
                "About Us",
                style: TextStyle(
                  fontFamily: "Lora",
                  fontSize: 18,
                ),
              ),
              subtitle: Text("what are we", style: TextStyle()),
              trailing: Icon(
                Icons.group,
              ),
            ),
            ListTile(
              //leading: Icon(Icons.circle, color: Colors.white),
              title: Text(
                "Contact Us",
                style: TextStyle(
                  fontFamily: "Lora",
                  fontSize: 18,
                ),
              ),
              subtitle: Text("Text us", style: TextStyle()),
              trailing: Icon(
                Icons.contact_support,
              ),
            ),
            ListTile(
              onTap: () {
                // Navigator.of(context).pop();
                // Navigator.of(context).pop();
              },
              //leading: Icon(Icons.circle, color: Colors.white),
              title: Text(
                "LogOut",
                style: TextStyle(
                  color: Colors.red,
                  fontFamily: "Lora",
                  fontSize: 18,
                ),
              ),

              trailing: Icon(
                Icons.logout,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          items: [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
            BottomNavigationBarItem(
                label: "Setting", icon: Icon(Icons.settings)),
          ]),
    );
  }

  onItemTapped(int index) {
    selectedIndex = index;
    setState(() {});
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Alakok"),
            accountEmail: Text("alakokmanz@gmail.com"),
            currentAccountPicture: CircleAvatar(
                child: ClipOval(
              child: Image.asset(
                'images/z1.png',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            )),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/z2.png'), fit: BoxFit.cover)),
          ),
          ListTile(
            title: Text('Developer\n     Alakokmanz \n      '),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Navbar extends  StatelessWidget {
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
              child: Image.network(
                'https://us-fbcloud.net/wb/data/1317/1317466-img.uwv96d.8gxmo.jpg',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            )),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1538435740860-67bd8f4e8eb8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            title: Text('Developer\n     Alakokmanz \n      '),
          )
        ],
      ),
    );
  }
}

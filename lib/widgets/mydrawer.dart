import 'package:edumart/screens/orders_screen.dart';
import 'package:edumart/screens/profile_screen.dart';
import 'package:edumart/screens/support_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screens/home_screen.dart';
import '../screens/about_screen.dart';
import '../screens/team_screen.dart';

class MyDrawer extends StatelessWidget {
  final List<Map<String, dynamic>> _items = [
    {
      'icon': Icons.store,
      'title': 'Store',
      'screen': HomeScreen(),
    },
    // {
    //   'icon': Icons.people,
    //   'title': 'Team',
    //   'screen': TeamScreen(),
    // },
    {
      'icon': Icons.shopping_basket,
      'title': 'My Orders',
      'screen': OrdersScreen(),
    },
    {
      'icon': Icons.support_agent,
      'title': 'Support',
      'screen': SupportScreen(),
    },
    {
      'icon': Icons.info,
      'title': 'About',
      'screen': AboutScreen(),
    },
    {
      'icon': Icons.account_circle,
      'title': 'Profile',
      'screen': ProfileScreen(),
    },
    {
      'icon': Icons.exit_to_app,
      'title': 'Logout',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        bottom: false,
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 80,
                color: Colors.black,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Icon(
                        Icons.account_circle,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Vansh Goel',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          'vanshg395@gmail.com',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (ctx, i) => ListTile(
                      leading: Icon(
                        _items[i]['icon'],
                        color: Colors.black,
                      ),
                      title: Text(_items[i]['title']),
                      onTap: () {
                        if (_items[i]['title'] == 'Settings' ||
                            _items[i]['title'] == 'Logout') return;
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (ctx) => _items[i]['screen'],
                          ),
                        );
                      }),
                  separatorBuilder: (ctx, i) => Divider(
                    thickness: 1,
                  ),
                  itemCount: _items.length,
                ),
              ),
              Container(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(FontAwesomeIcons.facebookF),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.twitter),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.instagram),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.pinterestP),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

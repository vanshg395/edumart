import 'package:flutter/material.dart';

import '../widgets/mydrawer.dart';
import 'product_screen.dart';

class CategoryScreen extends StatelessWidget {
  final String title;

  CategoryScreen(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/logo.png',
          height: 40,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        brightness: Brightness.light,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/tape.jpg'),
                ),
                title: Text('I am a Product'),
                subtitle: Text('I am a Description'),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) =>
                        ProductScreen('I am a Product', 'assets/tape.jpg'),
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                indent: 16,
                endIndent: 16,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/pencil.jpg'),
                ),
                title: Text('I am a Product'),
                subtitle: Text('I am a Description'),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) =>
                        ProductScreen('I am a Product', 'assets/pencil.jpg'),
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                indent: 16,
                endIndent: 16,
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

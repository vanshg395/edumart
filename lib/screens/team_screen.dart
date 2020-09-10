import 'package:flutter/material.dart';

import '../widgets/mydrawer.dart';

class TeamScreen extends StatelessWidget {
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
      ),
      drawer: MyDrawer(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 250,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/about.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 220,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Text(
                        'OUR\nLEADERSHIP',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              fontWeight: FontWeight.w300,
                              letterSpacing: 2,
                            ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.account_circle,
                      size: 44,
                    ),
                  ),
                  title: Text('Urvisha Shrivastava'),
                  subtitle: Text('CEO'),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.account_circle,
                      size: 44,
                    ),
                  ),
                  title: Text('Vishesh Kumar'),
                  subtitle: Text('COO'),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.account_circle,
                      size: 44,
                    ),
                  ),
                  title: Text('Vansh Goel'),
                  subtitle: Text('CTO'),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.account_circle,
                      size: 44,
                    ),
                  ),
                  title: Text('Vaidit Patel'),
                  subtitle: Text('CTO'),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.account_circle,
                      size: 44,
                    ),
                  ),
                  title: Text('Abhimanyu Reddy'),
                  subtitle: Text('CFO'),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.account_circle,
                      size: 44,
                    ),
                  ),
                  title: Text('Shreya Teredesai'),
                  subtitle: Text('CMO'),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.account_circle,
                      size: 44,
                    ),
                  ),
                  title: Text('Vaishnavi Durge'),
                  subtitle:
                      Text('Business Development and Marketing Executive'),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.account_circle,
                      size: 44,
                    ),
                  ),
                  title: Text('Vibhuti Narayan Singh'),
                  subtitle: Text('General Manager'),
                ),
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

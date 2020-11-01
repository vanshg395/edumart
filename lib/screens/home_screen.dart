import 'package:edumart/screens/category_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'package:badges/badges.dart';

import './product_screen.dart';
import '../widgets/mydrawer.dart';
import '../widgets/cartdrawer.dart';
import '../provider/cart.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _sKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _sKey,
      appBar: AppBar(
        title: Image.asset(
          'assets/logo.png',
          height: 40,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Badge(
              showBadge: Provider.of<Cart>(context).cartItems.length == 0
                  ? false
                  : true,
              badgeContent: Provider.of<Cart>(context).cartItems.length == 0
                  ? null
                  : Text(
                      Provider.of<Cart>(context).cartItems.length.toString()),
              badgeColor: Color(0xFFC7ECF2),
              child: Icon(
                Icons.shopping_cart,
              ),
            ),
            onPressed: () {
              _sKey.currentState.openEndDrawer();
            },
          ),
        ],
        iconTheme: IconThemeData(color: Colors.black),
        brightness: Brightness.light,
      ),
      drawer: MyDrawer(),
      endDrawer: CartDrawer(),
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
                          image: AssetImage('assets/dash.jpg'),
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
                        'WELCOME\nTO OUR WORLD',
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
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  'New Arrivals',
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.w300,
                        letterSpacing: 2,
                      ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 250,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        child: Hero(
                          tag: 'Designer Tapes',
                          child: Material(
                            child: Container(
                              alignment: Alignment(0, -0.75),
                              height: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/tape.jpg'),
                                ),
                              ),
                              child: Container(
                                padding: EdgeInsets.only(
                                  bottom: 3, // space between underline and text
                                ),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      // Text colour here
                                      width: 2.0, // Underline width
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'Designer Tapes',
                                ),
                              ),
                            ),
                          ),
                        ),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => ProductScreen(
                                'Designer Tapes', 'assets/tape.jpg'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: GestureDetector(
                        child: Hero(
                          tag: 'Doodling Pencils',
                          child: Material(
                            child: Container(
                              alignment: Alignment(0, -0.75),
                              height: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/pencil.jpg'),
                                ),
                              ),
                              child: Container(
                                padding: EdgeInsets.only(
                                  bottom: 3, // space between underline and text
                                ),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      // Text colour here
                                      width: 2.0, // Underline width
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'Doodling Pencils',
                                ),
                              ),
                            ),
                          ),
                        ),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => ProductScreen(
                                'Doodling Pencils', 'assets/pencil.jpg'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 120,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        child: Hero(
                          tag: 'Pouches',
                          child: Material(
                            child: Container(
                              alignment: Alignment(0, 0.7),
                              height: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/desk.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Container(
                                padding: EdgeInsets.only(
                                  bottom: 3, // space between underline and text
                                ),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      // Text colour here
                                      width: 2.0, // Underline width
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'Pouches',
                                ),
                              ),
                            ),
                          ),
                        ),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) =>
                                ProductScreen('Pouches', 'assets/desk.jpg'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: GestureDetector(
                        child: Hero(
                          tag: 'Uniform',
                          child: Material(
                            child: Container(
                              alignment: Alignment(0, -0.7),
                              height: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/uniform.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Container(
                                padding: EdgeInsets.only(
                                  bottom: 3, // space between underline and text
                                ),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      // Text colour here
                                      width: 2.0, // Underline width
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'Uniforms',
                                ),
                              ),
                            ),
                          ),
                        ),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) =>
                                ProductScreen('Uniforms', 'assets/uniform.jpg'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: GestureDetector(
                        child: Hero(
                          tag: 'Pens & Pencils',
                          child: Material(
                            child: Container(
                              alignment: Alignment(0, 0.7),
                              height: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/pens.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Container(
                                padding: EdgeInsets.only(
                                  bottom: 3, // space between underline and text
                                ),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      // Text colour here
                                      width: 2.0, // Underline width
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'Pens & Pencils',
                                ),
                              ),
                            ),
                          ),
                        ),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => ProductScreen(
                                'Pens & Pencils', 'assets/pens.jpg'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  'Shop By Categories',
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.w300,
                        letterSpacing: 2,
                      ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: Container(
                        height: double.infinity,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Color(0xFFB9B9B9).withOpacity(0.25),
                            )
                          ],
                          color: Colors.white,
                        ),
                        child: Text('Art & Craft'),
                      ),
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => CategoryScreen('Art & Craft'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: Container(
                        height: double.infinity,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Color(0xFFB9B9B9).withOpacity(0.25),
                            )
                          ],
                          color: Colors.white,
                        ),
                        child: Text(
                          'Pens\n& Pencils',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => CategoryScreen('Pens & Pencils'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: Container(
                        height: double.infinity,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Color(0xFFB9B9B9).withOpacity(0.25),
                            )
                          ],
                          color: Colors.white,
                        ),
                        child: Text('Notebooks'),
                      ),
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => CategoryScreen('Notebooks'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: Container(
                        height: double.infinity,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Color(0xFFB9B9B9).withOpacity(0.25),
                            )
                          ],
                          color: Colors.white,
                        ),
                        child: Text('Textbooks'),
                      ),
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => CategoryScreen('Textbooks'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: Container(
                        height: double.infinity,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Color(0xFFB9B9B9).withOpacity(0.25),
                            )
                          ],
                          color: Colors.white,
                        ),
                        child: Text('Novels'),
                      ),
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => CategoryScreen('Novels'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: Container(
                        height: double.infinity,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Color(0xFFB9B9B9).withOpacity(0.25),
                            )
                          ],
                          color: Colors.white,
                        ),
                        child: Text('Uniforms'),
                      ),
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => CategoryScreen('Uniforms'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: Container(
                        height: double.infinity,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Color(0xFFB9B9B9).withOpacity(0.25),
                            )
                          ],
                          color: Colors.white,
                        ),
                        child: Text(
                          'Desk Accessories',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => CategoryScreen('Desk Accessories'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
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

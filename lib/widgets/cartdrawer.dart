import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/cart.dart';

class CartDrawer extends StatefulWidget {
  @override
  _CartDrawerState createState() => _CartDrawerState();
}

class _CartDrawerState extends State<CartDrawer> {
  String _cartTotal = '0';

  @override
  void initState() {
    super.initState();
    final _total = Provider.of<Cart>(context, listen: false).cartTotal();
    setState(() {
      _cartTotal = _total.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SafeArea(
          bottom: false,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 100,
                  alignment: Alignment.center,
                  width: double.infinity,
                  color: Colors.black,
                  child: Text(
                    'Cart',
                    style: Theme.of(context).textTheme.headline5.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ),
                if (Provider.of<Cart>(context).cartItems.length == 0) ...[
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'No Items',
                    style: Theme.of(context).textTheme.headline5.copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ] else ...[
                  Expanded(
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      children: <Widget>[
                        ...Provider.of<Cart>(context)
                            .cartItems
                            .map(
                              (item) => ListTile(
                                title: Text(item['title']),
                                subtitle: Text('₹ ' + item['price'] + '/-'),
                                trailing: Text('x${item['qty']}'),
                              ),
                            )
                            .toList(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Subtotal',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.w300),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      '₹ $_cartTotal',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      margin: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      color: Colors.black,
                      child: Text(
                        'Checkout',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}

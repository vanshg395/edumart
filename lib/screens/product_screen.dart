import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/cart.dart';

class ProductScreen extends StatefulWidget {
  final String title;
  final String imageUrl;

  ProductScreen(this.title, this.imageUrl);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final GlobalKey<ScaffoldState> _sKey = GlobalKey();
  bool _isInfoOpen = false;
  bool _isPolicyOpen = false;
  bool _isShippingOpen = false;

  final String price = ((Random().nextInt(10) + 1) * 10).toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _sKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        brightness: Brightness.light,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Hero(
                tag: widget.title,
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  widget.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  '₹ $price/-',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontSize: 18),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'I\'m a product description. This is a great place to "sell" your product and grab buyers\' attention. Describe your product clearly and concisely. Use unique keywords. Write your own description instead of using manufacturers\' copy.',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                child: Container(
                  height: 60,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  color: Color(0xFFD8F1F6),
                  child: Text(
                    'Add to Cart',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(fontWeight: FontWeight.w300),
                  ),
                ),
                onTap: () {
                  Provider.of<Cart>(context, listen: false)
                      .addToCart(widget.title, price);
                  _sKey.currentState.showSnackBar(
                    SnackBar(
                      content: Text('Item Added to Cart'),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: _isInfoOpen ? 160 : 30,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'PRODUCT INFO',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        GestureDetector(
                          child: Container(
                            child: Icon(
                              Icons.add,
                              size: 24,
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              _isInfoOpen = !_isInfoOpen;
                            });
                          },
                        )
                      ],
                    ),
                    if (_isInfoOpen) ...[
                      Flexible(
                        child: Text(
                          'I\'m a product detail. I\'m a great place to add more information about your product such as sizing, material, care and cleaning instructions. This is also a great space to write what makes this product special and how your customers can benefit from this item. Buyers like to know what they’re getting before they purchase, so give them as much information as possible so they can buy with confidence and certainty.',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    ]
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                indent: 16,
                endIndent: 16,
              ),
              SizedBox(
                height: 20,
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: _isPolicyOpen ? 130 : 30,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'RETURN & REFUND POLICY',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        GestureDetector(
                          child: Container(
                            child: Icon(
                              Icons.add,
                              size: 24,
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              _isPolicyOpen = !_isPolicyOpen;
                            });
                          },
                        )
                      ],
                    ),
                    if (_isPolicyOpen) ...[
                      Flexible(
                        child: Text(
                          'I’m a Return and Refund policy. I’m a great place to let your customers know what to do in case they are dissatisfied with their purchase. Having a straightforward refund or exchange policy is a great way to build trust and reassure your customers that they can buy with confidence.',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    ]
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                indent: 16,
                endIndent: 16,
              ),
              SizedBox(
                height: 20,
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: _isShippingOpen ? 130 : 30,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'SHIPPING INFO',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        GestureDetector(
                          child: Container(
                            child: Icon(
                              Icons.add,
                              size: 24,
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              _isShippingOpen = !_isShippingOpen;
                            });
                          },
                        )
                      ],
                    ),
                    if (_isShippingOpen) ...[
                      Flexible(
                        child: Text(
                          'I\'m a shipping policy. I\'m a great place to add more information about your shipping methods, packaging and cost. Providing straightforward information about your shipping policy is a great way to build trust and reassure your customers that they can buy from you with confidence.',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    ]
                  ],
                ),
              ),
              Divider(
                thickness: 1,
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

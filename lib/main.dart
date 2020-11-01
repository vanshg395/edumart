import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/home_screen.dart';
import './provider/cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Cart(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Edumart',
        home: HomeScreen(),
      ),
    );
  }
}

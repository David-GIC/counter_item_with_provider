import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'file:///D:/Project/Learn/testing_provider_package/lib/pages/home.dart';
import 'file:///D:/Project/Learn/testing_provider_package/lib/provider/item_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider(
          create: (_) => ItemProvider(),
//          builder: (_, widget) => widget,
          child: MyHomePage()),
    );
  }
}

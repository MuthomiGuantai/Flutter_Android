import 'package:first_app/product_manager.dart';
import 'package:flutter/material.dart';

import './product_manager.dart';

main() => runApp(MyApp());
/*{
  runApp(MyApp());
}*/

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('EasyList'),
          ),
          body: ProductManager()),
    );
  }
}

import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;
  
  ProductManager({this.startingProduct = 'Sweets Tester'}){
      print('[ProductManager Widget] Constructor');
  }
  @override
  State<StatefulWidget> createState() {
    print('[ProductManager Widget] CreateState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

@override
  void initState() {
    print('[ProductManager State] initState()');
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[ProductManager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }
  @override
  Widget build(BuildContext context) {
    print('[ProductManager State] build');
    return Column(children: [Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        color: Theme.of(context).primaryColor,
        onPressed: () {
          setState(() {
            _products.add('Advanced Food Tester');
          });
        },
        child: Text('Add Product'),
      ),
    ),
     Products(_products)
    ]);
  }
}

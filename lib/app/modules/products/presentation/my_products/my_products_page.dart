import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'my_products_controller.dart';

class MyProductsPage extends StatefulWidget {
  static const routeId = '/:room_id';

  final String roomId;

  const MyProductsPage({
    required this.roomId,
  });

  @override
  _MyProductsPageState createState() => _MyProductsPageState();
}

class _MyProductsPageState
    extends ModularState<MyProductsPage, MyProductsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.roomId),
      ),
    );
  }
}

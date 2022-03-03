import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'products_controller.dart';

class ProductsPage extends StatefulWidget {
  static const routeId = '/products';

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState
    extends ModularState<ProductsPage, ProductsController> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

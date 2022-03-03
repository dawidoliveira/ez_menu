import 'package:flutter/material.dart';

import 'products_state.dart';

class ProductsController extends ValueNotifier<ProductsState> {
  ProductsController() : super(ProductsState());
}

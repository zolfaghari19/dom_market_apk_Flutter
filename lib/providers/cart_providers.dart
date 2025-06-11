import 'package:application/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartProviders extends ChangeNotifier {
  final List<ProductModel> _cart = [];
  List<ProductModel> get cart => _cart;
  void toggleFavorite(ProductModel product) {
    if (_cart.contains(product)) {
      for (ProductModel element in _cart) {
        element.quantity++;
      }
    } else {
      _cart.add(product);
    }
    notifyListeners();
  }

  incrementQtn(int index) => _cart[index].quantity++;
  decrementQtn(int index) => _cart[index].quantity--;
  totalPrice() {
    double total1 = 0.0;
    for (ProductModel element in _cart) {
      total1 += element.price * element.quantity;
    }
    return total1;
  }

  static CartProviders of(BuildContext context, {bool listen = true}) {
    return Provider.of<CartProviders>(context, listen: listen);
  }
}

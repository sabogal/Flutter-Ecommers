import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["BMX - Mutanty", "650.99", "lib/images/bici-mutanty.png", Colors.brown],
    ["Timon 4 partes - Cult", "74.99", "lib/images/bars.webp", Colors.brown],
    ["Casetera Crew - Cult", "179.99", "lib/images/cassett.webp", Colors.brown],
    ["Tenedor Sect - Cult", "144.99", "lib/images/tenedor.webp", Colors.brown],
  ];

  // list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}

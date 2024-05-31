import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_model.dart';
import 'product_page.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Page'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: cart.cart.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cart.cart[index].name),
            subtitle: Text('\$${cart.cart[index].price} x ${cart.cart[index].quantity}'),
            trailing: Text('Total: \$${cart.cart[index].price * cart.cart[index].quantity}'),
          );
        },
      ),
    );
  }
}
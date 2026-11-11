import 'package:flutter/material.dart';
import 'package:flutter_application_1/componentproducts.dart';

class Productdetails extends StatelessWidget {
  final Product product;
  const new({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text("Product Details", style: TextStyle(color: Colors.red),),
      ),
      body: Center(
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white.withOpacity(0.8),
            child: Icon(product.icon, color: Colors.red),
          ),
            title: Text(product.name),
            subtitle: Text("\$${product.price}"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.star, color: Colors.yellow,),
                SizedBox(width: 10),
                Text(product.rate)
              ],
            ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_application_1/cartpage.dart';
import 'package:flutter_application_1/productdetails.dart';

class Product {
  final IconData icon;
  final String name;
  final String price;
  final String rate;

  Product({
    required this.icon,
    required this.name,
    required this.price,
    required this.rate,
  });
}

List<Product> items = [];

class Componentproducts extends StatefulWidget {
  final Product product;
  const new({super.key, required this.product});

  @override
  State<Componentproducts> createState() => _Componentproducts();
}

class _Componentproducts extends State<Componentproducts> {
  bool add = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Productdetails(product: widget.product),
        ),
      ),
      child: Card(
        color: Colors.white,
        elevation: 5,
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            Icon(widget.product.icon, color: Colors.red, size: 20),
            Text(
              widget.product.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "\$${widget.product.price}",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: add ? Colors.red : Colors.black,
                foregroundColor: add ? Colors.black : Colors.white,
              ),
              onPressed: () {
                setState(() {
                  add = !add;
                });
                if (add) {
                  items.add(widget.product);
                } else if (!add) {
                  items.remove(widget.product);
                }
              },
              child: Text(add ? "Added" : "Add to Cart"),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/componentproducts.dart';
import 'package:flutter_application_1/homepage.dart';

class Cartpage extends StatefulWidget {
  const new({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => Homepage()),
            );
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        title: Text("Cart Page"),
      ),
      body: items.isEmpty
          ? Center(child: Text("Cart is Empty"))
          : ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Card(
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white.withOpacity(0.8),
                      child: Icon(item.icon, color: Colors.red),
                    ),
                    title: Text(item.name),
                    subtitle: Text("\$${item.price}"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        SizedBox(width: 10),
                        Text(item.rate),

                        Row(
                          mainAxisSize: .min,
                          children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    count++;
                                  });
                                },
                                icon: Icon(Icons.add),
                              ),
                              
                            Text("$count"),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  count--;
                                });
                              },
                              icon: Icon(Icons.remove),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}

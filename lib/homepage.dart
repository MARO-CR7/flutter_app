import 'package:flutter/material.dart';
import 'package:flutter_application_1/cartpage.dart';
import 'package:flutter_application_1/componentpage.dart';
import 'package:flutter_application_1/componentproducts.dart';
import 'package:flutter_application_1/productdetails.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/profilepage.dart';
import 'package:flutter_application_1/secondpage.dart';
import 'package:flutter_application_1/textfieldtest.dart';

class Homepage extends StatefulWidget {
  const new({super.key});

  @override
  State<Homepage> createState() => _Homepage();
}

class _Homepage extends State<Homepage  > {
  final List<CustomData> items = [
    CustomData(itemIcon: Icons.directions_bike, itemTitle: 'bike'),
    CustomData(itemIcon: Icons.directions_boat, itemTitle: 'Boat'),
    CustomData(itemIcon: Icons.directions_car, itemTitle: 'Car'),
  ];

  final List<Product> products = [
    Product(
      icon: Icons.directions_bike,
      name: 'Bike',
      price: '100',
      rate: '4.8',
    ),
    Product(
      icon: Icons.directions_boat,
      name: 'Boat',
      price: '250',
      rate: '4.5',
    ),
    Product(icon: Icons.directions_car, name: 'Car', price: '200', rate: '5.0'),
    Product(
      icon: Icons.directions_train,
      name: 'Train',
      price: '500',
      rate: '4.3',
    ),
    Product(icon: Icons.directions_bus, name: 'Bus', price: '300', rate: '4.0'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          leading: Icon(Icons.menu),
          title: Text(
            "Black Clover",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search, color: Colors.black54, size: 50),
            ),
          ],
        ),
        // body: Container(width: double.infinity,child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,children: [Icon(Icons.person_2),Text("Hello World"),IconButton(onPressed: () => print("Hello"), icon: Icon(Icons.search))],),),
        // body: Container(
        //   height: double.infinity,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(200),
        //         child: Text("Asta , "),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(200),
        //         child: Text("Yuno , "),
        //       ),
        //       Padding(padding: const EdgeInsets.all(200), child: Text("Lipy.")),
        //     ],
        //   ),
        // ),

        // body: Container(
        //   height: double.infinity,
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Padding(padding: const EdgeInsets.all(20), child: Text("Asta")),
        //       Padding(padding: const EdgeInsets.all(20), child: Text("Yuno")),
        //       Container(
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           crossAxisAlignment: CrossAxisAlignment.center,
        //           children: [
        //             Padding(
        //               padding: const EdgeInsets.all(100),
        //               child: Text("Asta , "),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.all(100),
        //               child: Text("Yuno , "),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.all(100),
        //               child: Text("Lipy , "),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.all(100),
        //               child: Text("Maro."),
        //             ),
        //           ],
        //         ),
        //       ),
        //       Padding(padding: const EdgeInsets.all(20), child: Text("Asta")),
        //       Padding(padding: const EdgeInsets.all(20), child: Text("Yuno")),
        //     ],
        //   ),
        // ),

        // body: SizedBox(
        //   width: double.infinity,
        //   height: double.infinity,
        //   child: MaterialButton(onPressed: () => Navigator.push(
        //     context,
        //     MaterialPageRoute(builder: (context) => secondpage(),)
        //     ),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [Icon(Icons.person)],
        //     )
        //   ),
        // ),
        // body: SizedBox(
        //   width: double.infinity,
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       Icon(Icons.person, size: 50, color: Colors.orange),
        //       Text("Asta & Lipy"),
        //       Text(
        //         "A fighters in the Black Bulls",
        //         style: TextStyle(fontWeight: FontWeight.w300),
        //       ),
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Padding(
        //             padding: const EdgeInsets.all(10),
        //             child: TextButton(
        //               style: TextButton.styleFrom(
        //                 backgroundColor: Colors.amber,
        //                 foregroundColor: Colors.black,
        //                 shadowColor: Colors.black,
        //               ),
        //               onPressed: () => print("Hello"),
        //               child: Text("Text"),
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(10),
        //             child: ElevatedButton(
        //               style: ElevatedButton.styleFrom(
        //                 backgroundColor: Colors.red,
        //                 foregroundColor: Colors.white,
        //                 shadowColor: Colors.deepPurple,
        //               ),
        //               onPressed: () => print("Ads of Black Clover"),
        //               child: Text("Elevated"),
        //             ),
        //           ),
        //             Padding(
        //               padding: const EdgeInsets.all(10),
        //               child: IconButton(
        //                 onPressed: () => print("Like"),
        //               icon: Icon(Icons.thumb_up),),
        //           ),

        //         ],
        //       ),
        //     ],
        //   ),
        // ),
        // body: Center(
        //   child: Container(
        //     width: 400,
        //     height: 500,
        //     padding: EdgeInsets.all(70),
        //     margin: EdgeInsets.all(20),
        //     decoration: BoxDecoration(
        //       color: Colors.red,
        //       borderRadius: BorderRadius.circular(30),
        //     ),
        //     child: Column(
        //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         Icon(Icons.account_circle, size: 100, color: Colors.black),
        //         Text(
        //           "Asta & Lipy",
        //           style: TextStyle(
        //             color: Colors.black87,
        //             fontSize: 20,
        //             fontWeight: FontWeight.bold,
        //           ),
        //         ),
        //         Text(
        //           "A fighters in the Black Bulls Team",
        //           style: TextStyle(
        //             color: Colors.black87,
        //             fontSize: 10,
        //             fontWeight: FontWeight.w200,
        //           ),
        //         ),
        //         Row(
        //           children: [
        //             Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Expanded(
        //                 child: ElevatedButton.icon(
        //                   onPressed: () {},
        //                   label: const Text("Message"),
        //                   icon: const Icon(Icons.message),
        //                 ),
        //               ),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Expanded(
        //                 child: ElevatedButton.icon(
        //                   onPressed: () {},
        //                   label: const Text("Call"),
        //                   icon: const Icon(Icons.call, color: Colors.red),
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //         Container(
        //           width: 300,
        //           child: Card(
        //             color: Colors.amber,
        //             child: ListTile(
        //               leading: Icon(Icons.details_sharp, color: Colors.cyan),
        //               title: Text("Details"),
        //               subtitle: Text("Tap to view the Profile Details"),
        //               trailing: Icon(Icons.next_plan, color: Colors.black),
        //               onTap: () {},
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        // body: Container(
        //   width: 500,
        //   height: 100,
        //   child: Card(
        //     color: Colors.amber,
        //     child: ListTile(
        //       leading: Icon(Icons.details_sharp, color: Colors.cyan),
        //       title: Text("Details"),
        //       subtitle: Text("Tap to view the Profile Details"),
        //       trailing: Icon(Icons.next_plan, color: Colors.black),
        //       onTap: () {},
        //     ),
        //   ),
        // ),
        // body: Center(
        //   child: Container(
        //     width: 600,
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         Card(
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(30),
        //           ),
        //           elevation: 5,

        //           color: Colors.blueAccent,
        //           child: CustomCard(
        //             title: "SmartPhones",
        //             subtitle: "Price: \$200",
        //             leadingIcon: Icons.smartphone,
        //             onTap: () => Navigator.push(
        //               context,
        //               MaterialPageRoute(builder: (context) => Secondpage()),
        //             ),
        //           ),
        //         ),
        //         Card(
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(30),
        //           ),
        //           elevation: 5,

        //           color: Colors.deepOrange,
        //           child: CustomCard(
        //             title: "Laptops",
        //             subtitle: "Price: \$500",
        //             leadingIcon: Icons.laptop,
        //             onTap: () => Navigator.push(
        //               context,
        //               MaterialPageRoute(builder: (context) => Secondpage()),
        //             ),
        //           ),
        //         ),
        //         Card(
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(30),
        //           ),
        //           elevation: 5,

        //           color: Colors.pinkAccent,
        //           child: CustomCard(
        //             title: "SmartWatches",
        //             subtitle: "Price: \$150",
        //             leadingIcon: Icons.watch,
        //             onTap: () => Navigator.push(
        //               context,
        //               MaterialPageRoute(builder: (context) => Secondpage()),
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        // body: Center(
        //   child: Container(
        //     width: 600,
        //     height: 50,
        //     child: ListView(
        //       children: [
        //         Column(
        //           children: [
        //             Card(
        //               shape: RoundedRectangleBorder(
        //                 borderRadius: BorderRadius.circular(30),
        //               ),
        //               elevation: 5,
        //               color: Colors.white,
        //               child: CustomCardWithListView(
        //                 title: "Bike",
        //                 icon: Icons.bike_scooter,
        //               ),
        //             ),
        //             Card(
        //               shape: RoundedRectangleBorder(
        //                 borderRadius: BorderRadius.circular(30),
        //               ),
        //               elevation: 5,
        //               color: Colors.red,
        //               child: CustomCardWithListView(
        //                 title: "Boat",
        //                 icon: Icons.directions_boat,
        //               ),
        //             ),
        //             Card(
        //               shape: RoundedRectangleBorder(
        //                 borderRadius: BorderRadius.circular(30),
        //               ),
        //               elevation: 5,
        //               color: Colors.blue,
        //               child: CustomCardWithListView(
        //                 title: "Train",
        //                 icon: Icons.train,
        //               ),
        //             ),
        //             Card(
        //               shape: RoundedRectangleBorder(
        //                 borderRadius: BorderRadius.circular(30),
        //               ),
        //               elevation: 5,
        //               color: Colors.orangeAccent,
        //               child: CustomCardWithListView(
        //                 title: "Car",
        //                 icon: Icons.car_crash,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        // body: Center(
        //   child: Container(
        //     width: 600,
        //     height: 100,
        //     child: ListView.builder(
        //       itemCount: 5,
        //       itemBuilder: (context, index) {
        //         return CustomCardWithListView(
        //           title: "Bike",
        //           icon: (Icons.bike_scooter),
        //         );
        //       },
        //     ),
        //   ),
        // ),
        // body: Center(
        //   child: Container(
        //     height: 180,
        //     width: 300,
        //     child: Card(
        //       color: Colors.white,
        //       child: ListView.builder(
        //         itemCount: items.length,
        //         itemBuilder: (context, index) =>
        //             Component(itemData: items[index]),
        //       ),
        //     ),
        //   ),
        // ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemBuilder: (context, index) =>
              Componentproducts(product: products[index]),
          itemCount: products.length,
        ),

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.red,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () => Navigator.pop(
                  context,
                  MaterialPageRoute(builder: ((context) => Login())),
                ),
                icon: Icon(Icons.login, color: Colors.black),
              ),
              label: "Login",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => ProfilePage())),
                ),
                icon: Icon(Icons.person, color: Colors.black),
              ),
              label: "Account",
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Cartpage()),
            );
          },
          child: Icon(Icons.shopping_cart),
          backgroundColor: Colors.red,
          foregroundColor: Colors.black,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
class ProfilePage extends StatefulWidget {
  const new({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          leading: IconButton(
            onPressed: () => Navigator.pop(
              context,
              MaterialPageRoute(builder: ((context) => Homepage())),
            ),
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          ),
          title: Text(
            "Black Clover",
            style: TextStyle(
              color: Colors.black,
              fontSize: 50,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search, color: Colors.black54, size: 50),
            ),
          ],
        ),
        body: Center(
          child: Container(
            width: 400,
            height: 500,
            padding: EdgeInsets.all(70),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.account_circle, size: 100, color: Colors.black),
                Text(
                  "Asta & Lipy",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "A fighters in the Black Bulls Team",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 10,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          label: const Text("Message"),
                          icon: const Icon(Icons.message),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          label: const Text("Call"),
                          icon: const Icon(Icons.call, color: Colors.red),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 300,
                  child: Card(
                    color: Colors.amber,
                    child: ListTile(
                      leading: Icon(Icons.details_sharp, color: Colors.cyan),
                      title: Text("Details"),
                      subtitle: Text("Tap to view the Profile Details"),
                      trailing: Icon(Icons.next_plan, color: Colors.black),
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

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
      ),
    );
  }
}

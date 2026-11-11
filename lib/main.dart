import 'package:flutter/material.dart';
import 'package:flutter_application_1/counterprovider.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/secondpage.dart';
import 'package:flutter_application_1/textfieldtest.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class CustomCardWithListView extends StatelessWidget {
  final String title;
  final IconData icon;

  const CustomCardWithListView({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(title), leading: Icon(icon));
  }
}

class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData leadingIcon;
  final VoidCallback onTap;

  const CustomCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leadingIcon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leadingIcon),
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: () => Secondpage(),
      trailing: Icon(Icons.arrow_back_ios),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => Counterprovider(),
      
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        home: Login(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

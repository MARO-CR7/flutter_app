import 'package:flutter/material.dart';

class CustomData {
  final IconData itemIcon;
  final String itemTitle;
  CustomData({required this.itemIcon, required this.itemTitle});
}

class Component extends StatelessWidget {
  final CustomData itemData;

  const new({super.key, required this.itemData});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.redAccent,
      child: ListTile(
        title: Text(itemData.itemTitle),
        leading: Icon(itemData.itemIcon),
      ),
    );
  }
}
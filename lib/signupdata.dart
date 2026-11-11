import 'package:flutter/material.dart';

class SignUpData{
  String label;
  IconData icon;
  Function function;
  bool obscureText;

  SignUpData({required this.label, required this.icon, this.obscureText = false, required this.function});
}
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';

class Login extends StatefulWidget {
  const new({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        leading: Icon(Icons.menu),
        title: Text(
          "Login to the Team",
          style: TextStyle(
            color: Colors.black,
            fontWeight: .bold,
            fontStyle: .normal,
          ),
        ),
      ),
      body: Form(
        key: formKey,
        child: Center(
          child: Container(
            width: 250,
            child: Column(
              mainAxisAlignment: .center,
              crossAxisAlignment: .center,
              children: [
                Icon(Icons.account_circle, size: 200, color: Colors.black),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter Your Email";
                    } else if (!value.contains("@gmail.com")) {
                      return "Please Check your Email";
                    }
                  },
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                    hintText: "maro@gmail.com",
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter Your Password";
                    } else {
                      return null;
                    }
                  },
                  controller: passController,
                  obscureText: isObscure,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    hintText: "*******",
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: () {
                        isObscure = !isObscure;
                      },
                      icon: isObscure
                          ? Icon(Icons.remove_red_eye)
                          : Icon(Icons.remove_red_eye_outlined),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    fixedSize: Size(400, 50),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      final email = emailController.text;
                      final pass = passController.text;

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Homepage()),
                      );
                    }
                  },
                  child: Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

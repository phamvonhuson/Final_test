import 'package:flutter/material.dart';
import 'package:flutter_project/components/my_button.dart';
import 'package:flutter_project/components/my_textfield.dart';
import 'package:flutter_project/pages/home_page.dart';

class LoginPage extends StatefulWidget{
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text editing controllers
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  //login method
  void login(){
    /*
    fill out authentication here..
     */
    // nevigate to home page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      )
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // logo
          Icon(
            Icons.lock_clock_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          
          const SizedBox(height: 25),
          // message,app slogan
          Text("Food Delivery App",
          style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).colorScheme.inversePrimary,

          ),
  ),
  const SizedBox(height: 25),
          // email textfeild
          MyTextfield(
            controller: emailcontroller, 
            hintText: "Email", 
            obscureText: false,
            ),

            const SizedBox(height: 30),
          // password textfeild
          MyTextfield(
            controller: passwordcontroller, 
            hintText: "Password", 
            obscureText: true,
          ),

          const SizedBox(height: 10),
          // sign in button
          MyButton(
            text: "Sign In",
            onTap: () {},
          ),
          
          const SizedBox(height: 25),
          // not a member? register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text(
              "Not a member",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary),
              ),
            const SizedBox(width:4),
            GestureDetector(
              onTap: widget.onTap,
            child: Text(
              "Register now",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontWeight: FontWeight.bold,
                ),
              ),
          ),
          ],
          ),
        ],
      ),
      ),
    );
  }
}
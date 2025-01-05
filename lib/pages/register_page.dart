
import 'package:flutter/material.dart';
import 'package:flutter_project/components/my_button.dart';
import 'package:flutter_project/components/my_textfield.dart';
// ignore: must_be_immutable
class RegisterPage extends StatefulWidget{
  final void Function()? onTap;

  const RegisterPage ({super.key, required this.onTap}); 

  
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>{
   final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
    final TextEditingController confirmPasswordController = TextEditingController();

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
          Text("Let's an account for you",
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
          // confirmpassword textfeild
          MyTextfield(
            controller: confirmPasswordController, 
            hintText: "Confirm password", 
            obscureText: true,
          ),

          const SizedBox(height: 10),
          // sign up button
          MyButton(
            text:"Sign Up",
            onTap:() {},
          ),
          
          const SizedBox(height: 25),
          // already have an account? Login here
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text(
              "already have an account?",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary),
              ),
            const SizedBox(width:4),
            GestureDetector(
              onTap: widget.onTap,
            child: Text(
              "Login now",
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
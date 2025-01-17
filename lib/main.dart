import 'package:flutter/material.dart';
import 'package:flutter_project/model/restaurant.dart';
import 'package:flutter_project/path/login_or_register.dart';
import 'package:flutter_project/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
     //theme provider
     ChangeNotifierProvider(create: (context) => ThemeProvider()
     ),

     //restaurant provider
    ChangeNotifierProvider(create: (context) => Restaurant()
     ),
],
child: const MyApp(),
),
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
    }
}


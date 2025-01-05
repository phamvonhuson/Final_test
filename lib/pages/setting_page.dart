import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/themes/theme_provider.dart';
import 'package:provider/provider.dart';
class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(12),
            ),
            margin: const EdgeInsets.only(left: 25,top: 15,right: 25),
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
            // dark mode 
            Text("Dark Mode", 
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.inversePrimary
              ),
            ),
            CupertinoSwitch(
              value: Provider.of<ThemeProvider>(context,listen: false)
              .isDarkMode, 
              onChanged: (value) =>
              Provider.of<ThemeProvider>(context,listen: false)
              .toggleTheme(),
              ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
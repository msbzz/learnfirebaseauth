import 'package:flutter/material.dart';
import 'package:learnfirebaseauth/auth.dart';
import 'package:learnfirebaseauth/loading_page.dart';
import 'package:learnfirebaseauth/pages/home_page.dart';
import 'package:learnfirebaseauth/pages/login_register_page.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Auth().authStateChanges,
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingPage();
          } else {
            if (snapshot.hasError) {
              print('Error initializing Firebase: ${snapshot.error}');
              return Center(child: Text('Error initializing Firebase'));
            }
            if (snapshot.hasData) {
              print('Foi 1 Firebase ');
              return HomePage();
            } else {
              print('Foi 2 Firebase ');
              return const LoginPage();
            }
          }
        }));
  }
}

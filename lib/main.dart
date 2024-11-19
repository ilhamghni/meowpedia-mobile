import 'package:flutter/material.dart';
import 'package:meowpedia_mobile/screens/menu.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:meowpedia_mobile/screens/login.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Meowpedia',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: const ColorScheme.light(
            primary: Colors.black,
            secondary: Colors.grey,
            surface: Colors.white,
          ),
        ),
       home: const LoginPage(),
      ),
    );
  }
}




import 'package:compro_mata_kancana/pages/about_page.dart';
import 'package:compro_mata_kancana/pages/contact_page.dart';
import 'package:compro_mata_kancana/pages/dashboard_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mata Kancana Kreatif',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardPage(),
        '/about': (context) => const AboutPage(),
        '/contact': (context) => const ContactPage()
      },
    );
  }
}

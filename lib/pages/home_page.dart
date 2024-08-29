import 'package:flutter/material.dart';
import 'package:hackathon/pages/alert_page.dart';
import 'package:hackathon/pages/default_page.dart';
import 'package:hackathon/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          DefaultPage(),
          Alertpage(),
          Profilepage(),
        ],
      ),
    );
  }
}

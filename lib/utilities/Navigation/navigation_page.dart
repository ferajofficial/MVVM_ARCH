import 'package:flutter/material.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationView();
  }
}

class NavigationView extends StatefulWidget {
  const NavigationView({super.key});

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body:  NavigationBar(
      //   items: const [
      //     NavigationItem(
      //       icon: Icon(Icons.home),
      //       title: Text('Home'),
      //     ),
      //     NavigationItem(
      //       icon: Icon(Icons.search),
      //       title: Text('Search'),
      //     ),
      //     NavigationItem(
      //       icon: Icon(Icons.person),
      //       title: Text('Profile'),
      //     ),
      //   ],
      //   selectedIndex: 0,
      //   onDestinationSelected: (index) {}, destinations: [
      //   NavigationDestination(
      //     icon: Icon(Icons.home),
      //     selectedIcon: Icon(Icons.home),
      //     title: Text('Home'),
      //   ),
      //   ],
      // );,
    );
  }
}

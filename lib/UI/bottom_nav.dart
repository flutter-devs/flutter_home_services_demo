import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          title: Text(
            'Home',
            style: TextStyle(color: Colors.black),
          ),
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          title: Text(
            'My Bookings',
            style: TextStyle(color: Colors.grey),
          ),
          icon: Icon(Icons.assignment),
        ),
        BottomNavigationBarItem(
          title: Text(
            'Help Center',
            style: TextStyle(color: Colors.grey),
          ),
          icon: Icon(Icons.help),
        ),
        BottomNavigationBarItem(
          title: Text(
            'Profile',
            style: TextStyle(color: Colors.grey),
          ),
          icon: Icon(Icons.account_circle),
        )
      ],
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,

    );
  }
}

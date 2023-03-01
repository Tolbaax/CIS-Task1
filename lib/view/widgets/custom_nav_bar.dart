import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.message,
            color: Colors.white,
          ),
          label: 'Chats',
        ),
        BottomNavigationBarItem(
          icon: Badge(
            label: Text(
              '99+',
              style: TextStyle(fontWeight: FontWeight.w500, fontFamily: ''),
            ),
            child: Icon(
              Icons.people,
              color: Colors.white,
            ),
          ),
          label: 'People',
        ),
      ],
      unselectedItemColor: Colors.white,
    );
  }
}

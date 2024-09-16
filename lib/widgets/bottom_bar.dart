import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      index: _pageIndex,
      items: [
        _buildNavItem(Icons.dashboard, "Dashboard", 0),
        _buildNavItem(Icons.book, "Passbooks", 1),
        _buildNavItem(Icons.group, "Group", 2),
        _buildNavItem(Icons.settings, "Settings", 3),
      ],
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    Color iconColor = _pageIndex == index
        ? Colors.purple
        : Colors.purple.withOpacity(0.3);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 30,
          color: iconColor,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: iconColor,
          ),
        ),
      ],
    );
  }
}

import 'package:anime_assignment2/features/home_screen/home_screen.dart';
import 'package:anime_assignment2/features/upgrade_plan/upgrade_plan_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: [
          HomeScreen(),
          Placeholder(),
          UpgradePlanScreen(),
          Placeholder(),
          Placeholder(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(0, 'assets/images/home_icon.png', 'Home'),
            _buildNavItem(1, 'assets/images/Group.png', 'Detail'),
            _buildNavItem(2, 'assets/images/search-normal.png', 'Upgrade'),
            _buildNavItem(3, 'assets/images/icon3.png', 'Download'),
            _buildNavItem(4, 'assets/images/setting.png', 'Library'),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, String icon, String label) {
    bool isActive = currentIndex == index;

    return GestureDetector(
      onTap: () => setState(() => currentIndex = index),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: isActive ? 16 : 12,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: isActive ? Color(0xFF6366F1) : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              icon,
              color: isActive ? Colors.white : Colors.grey,
              width: 24,
              height: 24,
            ),
            if (isActive) ...[
              SizedBox(width: 8),
              Text(
                label,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

import 'package:application/carts/cart_scrren.dart';
import 'package:application/pages/constants.dart';
import 'package:application/pages/favorite_screen.dart';
import 'package:application/pages/home_screen.dart';
import 'package:application/pages/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 2;
  List screens = const [
    Scaffold(),
    FavoriteScreen(),
    HomeScreen(),
    CartScreen(),
    ProfileScreen(),
    Scaffold(),
    
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentIndex = 2;
          });
        },
        shape: const CircleBorder(),
        backgroundColor: kprimeryColor,
        child: const Icon(Icons.home, color: Colors.white, size: 35),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 6),
        child: BottomAppBar(
          elevation: 1,
          height: 60,
          color: Colors.white,
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 0;
                  });
                },
                icon: Icon(
                  Icons.grid_view_outlined,
                  size: 30,
                  color: currentIndex == 0
                      ? kprimeryColor
                      : Colors.grey.shade400,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 1;
                  });
                },
                icon: Icon(
                  Icons.favorite_border,
                  size: 30,
                  color: currentIndex == 1
                      ? kprimeryColor
                      : Colors.grey.shade400,
                ),
              ),
              const SizedBox(width: 14),
              IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 3;
                  });
                },
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                  color: currentIndex == 3
                      ? kprimeryColor
                      : Colors.grey.shade400,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 4;
                  });
                },
                icon: Icon(
                  Icons.person,
                  size: 30,
                  color: currentIndex == 4
                      ? kprimeryColor
                      : Colors.grey.shade400,
                ),
              ),
            ],
          ),
        ),
      ),
      body: screens[currentIndex],
    );
  }
}

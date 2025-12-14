import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recipe_finder/core/theme/app_pallete.dart';
import 'package:recipe_finder/features/home/presentation/pages/my_app_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  late final List<Widget> pages;

  @override
  void initState() {
    pages = [
      MyAppHomePage(),
      navBarPage(Iconsax.heart5),
      navBarPage(Iconsax.calendar5),
      navBarPage(Iconsax.setting_21),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        currentIndex: selectedIndex,
        backgroundColor: Colors.white,
        elevation: 0,
        iconSize: 28,
        selectedItemColor: AppPallete.primaryColor,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(
          color: AppPallete.primaryColor,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: TextStyle(
          color: AppPallete.primaryColor,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
        items: [
          BottomNavigationBarItem(
            icon: selectedIndex == 0 ? Icon(Iconsax.home5) : Icon(Iconsax.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: selectedIndex == 1
                ? Icon(Iconsax.heart5)
                : Icon(Iconsax.heart),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: selectedIndex == 2
                ? Icon(Iconsax.calendar5)
                : Icon(Iconsax.calendar),
            label: 'Meal Plan',
          ),
          BottomNavigationBarItem(
            icon: selectedIndex == 3
                ? Icon(Iconsax.setting_21)
                : Icon(Iconsax.setting),
            label: 'Setting',
          ),
        ],
      ),
      body: pages[selectedIndex],
    );
  }

  navBarPage(iconame) {
    return Center(
      child: Icon(iconame, size: 100, color: AppPallete.primaryColor),
    );
  }
}

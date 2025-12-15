import 'package:flutter/material.dart';
import 'package:recipe_finder/core/theme/app_pallete.dart';
import 'package:recipe_finder/features/home/presentation/widgets/banner.dart';
import 'package:recipe_finder/features/home/presentation/widgets/home_page_header.dart';
import 'package:recipe_finder/features/home/presentation/widgets/recipe_item.dart';
import 'package:recipe_finder/features/home/presentation/widgets/search_bar.dart';

class MyAppHomePage extends StatefulWidget {
  const MyAppHomePage({super.key});

  @override
  State<MyAppHomePage> createState() => _MyAppHomePageState();
}

class _MyAppHomePageState extends State<MyAppHomePage> {
  @override
  void initState() {
    super.initState();
  }

  List<String> get categories => [
    "All",
    "Breakfast",
    "Lunch",
    "Dinner",
    "Snacks",
    "Drinks",
    "Desserts",
  ];

  late ValueNotifier<String> selectedCategory = ValueNotifier(categories[0]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    homePageHeader(),
                    searchBar(),
                    HomeBanner(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // todo get the categories from repository
                    ValueListenableBuilder(
                      valueListenable: selectedCategory,
                      builder: (context, value, child) {
                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: categories.map((category) {
                              return GestureDetector(
                                onTap: () {
                                  selectedCategory.value = category;
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: selectedCategory.value == category
                                        ? AppPallete.primaryColor
                                        : null,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 10,
                                  ),
                                  margin: EdgeInsets.only(right: 15),
                                  child: Text(
                                    category,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: selectedCategory.value == category
                                          ? Colors.white
                                          : Colors.grey.shade600,
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Quick & Easy",
                          style: TextStyle(
                            fontSize: 20,
                            letterSpacing: 0.1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        TextButton(
                          onPressed: () {
                            // todo
                          },
                          child: Text(
                            "View All",
                            style: TextStyle(
                              color: AppPallete.bannerColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: categories.map((e) {
                            return RecipeItem();
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

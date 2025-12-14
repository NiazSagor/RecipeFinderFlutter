import 'package:flutter/material.dart';
import 'package:recipe_finder/core/theme/app_pallete.dart';
import 'package:recipe_finder/features/home/presentation/widgets/banner.dart';
import 'package:recipe_finder/features/home/presentation/widgets/home_page_header.dart';
import 'package:recipe_finder/features/home/presentation/widgets/search_bar.dart';

class MyAppHomePage extends StatefulWidget {
  const MyAppHomePage({super.key});

  @override
  State<MyAppHomePage> createState() => _MyAppHomePageState();
}

class _MyAppHomePageState extends State<MyAppHomePage> {
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
                    // StreamBuilder(
                    //     stream: stream,
                    //     builder: (BuildContext context,
                    //         AsyncSnapshot snapshot) {
                    //       if (snapshot.hasData) {
                    //         return widgetToBuild;
                    //       } else if (snapshot.hasError) {
                    //         return Icon(Icons.error_outline);
                    //       } else {
                    //         return CircularProgressIndicator();
                    //       }
                    //     })
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

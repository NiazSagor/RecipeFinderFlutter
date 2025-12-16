import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recipe_finder/core/theme/app_pallete.dart';
import 'package:recipe_finder/features/home/presentation/widgets/my_icon_button.dart';
import 'package:recipe_finder/features/home/presentation/widgets/recipe_item.dart';

class ViewAllRecipes extends StatefulWidget {
  const ViewAllRecipes({super.key});

  @override
  State<ViewAllRecipes> createState() => _ViewAllRecipesState();
}

class _ViewAllRecipesState extends State<ViewAllRecipes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppPallete.backgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          SizedBox(width: 15),
          MyIconButton(
            iconData: Icons.arrow_back_ios_new,
            pressed: () {
              Navigator.pop(context);
            },
          ),
          Spacer(),
          Text(
            "Quick & Easy",

            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          Spacer(),
          MyIconButton(iconData: Iconsax.notification, pressed: () {}),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 15, right: 5, top: 16),
        child: Column(
          children: [
            GridView.builder(
              itemCount: 5,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.72,
              ),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    RecipeItem(),
                    Row(
                      children: [
                        Icon(Iconsax.star1, color: Colors.amberAccent),
                        SizedBox(width: 5),
                        Text(
                          " rate",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("/5"),
                        SizedBox(width: 5),
                        Text(" Reviews", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

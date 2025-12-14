import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recipe_finder/features/home/presentation/widgets/my_icon_button.dart';

Row homePageHeader() {
  return Row(
    children: [
      Text(
        "What are you\ncooking today?",
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          height: 1,
        ),
      ),
      Spacer(),
      MyIconButton(
        iconData: Iconsax.notification,
        pressed: () {},
      ),
    ],
  );
}
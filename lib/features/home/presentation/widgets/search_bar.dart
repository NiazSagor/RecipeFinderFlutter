
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

Padding searchBar() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 22),
    child: TextField(
      decoration: InputDecoration(
        filled: true,
        prefixIcon: Icon(Iconsax.search_normal),
        fillColor: Colors.white,
        border: InputBorder.none,
        hintText: "Search Any recipes",
        hintStyle: TextStyle(color: Colors.grey),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}
import 'package:flutter/material.dart';

/// App Colors
class AppColors {
  static const Color primaryColor = Color(0xFF2E7D32); // Green
  static const Color accentColor = Color(0xFF81C784); // Light Green
  static const Color backgroundColor = Color(0xFFF1F8E9); // Light Background
  static const Color textColor = Colors.black87;
  static const Color buttonColor = Color(0xFF43A047);
  static const Color shadowColor = Colors.black26;
}

/// Text Styles
class AppTextStyles {
  static const TextStyle headerStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textColor,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static const TextStyle favoriteItemStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.textColor,
  );

  static const TextStyle labelStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textColor,
  );
}

/// Strings
class AppStrings {
  static const String welcomeMessage = "WELCOME , HARRY";
  static const String highestDemand = "Highest\nDemand";
  static const String lowestDemand = "Lowest\nDemand";
  static const String dailyPrice = "Daily Price";
  static const String searchPlaceholder = "Search";
  static const String favoritesLabel = "FAVOURITES";

  // Favorite Items
  static const String carrot = "Carrot";
  static const String cabbage = "Cabbage";
  static const String tomato = "Tomato";
}

/// Asset Paths
class AppAssets {
  static const String dailyPriceImage = "assets/images/vegetables.jpg";
}

/// App Dimensions
class AppDimensions {
  static const double buttonHeight = 50.0;
  static const double buttonRadius = 12.0;
  static const double padding = 16.0;
}

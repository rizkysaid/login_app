import 'package:flutter/material.dart';

class DashboardCategoriesModel{
  final String title;
  final String heading;
  final String subheading;
  final VoidCallback? onPress;

  DashboardCategoriesModel(this.title, this.heading, this.subheading, this.onPress);

  static List<DashboardCategoriesModel> list = [
    DashboardCategoriesModel("JS", "Java Script", "10 Lessons", null),
    DashboardCategoriesModel("FT", "Flutter", "11 Lessons", null),
    DashboardCategoriesModel("H", "Hyper Text Machine Learning", "9 Lessons", null),
    DashboardCategoriesModel("KL", "Kotlin", "8 Lessons", null),
    DashboardCategoriesModel("Py", "Python", "100 Lessons", null),
  ];

}
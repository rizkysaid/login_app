import 'package:flutter/material.dart';
import 'package:login_app/src/constants/image_strings.dart';

class DashboardTopCourseModel{

  final String header;
  final String image;
  final IconData? icon;
  final String title;
  final String subtitle;
  final VoidCallback? onPress;

  DashboardTopCourseModel(this.header, this.image, this.icon, this.title, this.subtitle, this.onPress);

  static List<DashboardTopCourseModel> list = [
    DashboardTopCourseModel("Flutter Crash Course", topCourseImage1, Icons.play_arrow, "3 Sections", "Programming Language", null),
    DashboardTopCourseModel("Flutter Crash Course", topCourseImage1, Icons.play_arrow, "3 Sections", "Programming Language", null),
    DashboardTopCourseModel("Flutter Crash Course", topCourseImage1, Icons.play_arrow, "3 Sections", "Programming Language", null),
    DashboardTopCourseModel("Flutter Crash Course", topCourseImage1, Icons.play_arrow, "3 Sections", "Programming Language", null),
    DashboardTopCourseModel("Flutter Crash Course", topCourseImage1, Icons.play_arrow, "3 Sections", "Programming Language", null),
  ];

}
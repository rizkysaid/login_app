import 'package:flutter/material.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/core/screens/dashboard/widgets/app_bar.dart';
import 'package:login_app/src/features/core/screens/dashboard/widgets/banner.dart';
import 'package:login_app/src/features/core/screens/dashboard/widgets/categories.dart';
import 'package:login_app/src/features/core/screens/dashboard/widgets/search_box.dart';
import 'package:login_app/src/features/core/screens/dashboard/widgets/top_course.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: const DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(dashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Heading
              Text(dashboardTitle, style: txtTheme.bodyMedium),
              Text(dashboardHeading, style: txtTheme.headlineSmall),
              const SizedBox(height: dashboardPadding),

              // Search Box
              DashboardSearchBox(txtTheme: txtTheme),
              const SizedBox(height: dashboardPadding),

              // Categories
              DashboardCategories(txtTheme: txtTheme),
              const SizedBox(height: dashboardPadding),

              // Banners
              DashboardBanner(txtTheme: txtTheme),
              const SizedBox(height: dashboardPadding),

              // Top Course
              Text(
                dashboardTopCourses,
                style: txtTheme.headlineMedium?.apply(fontSizeFactor: 1.2),
              ),
              DashboardTopCourse(txtTheme: txtTheme),
            ],
          ),
        ),
      ),
    );
  }
}

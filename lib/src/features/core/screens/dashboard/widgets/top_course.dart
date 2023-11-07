import 'package:flutter/material.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/features/core/models/top_course_model.dart';

class DashboardTopCourse extends StatelessWidget {
  const DashboardTopCourse({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardTopCourseModel.list;
    return SizedBox(
      height: 200,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (content, index) => SizedBox(
          width: 320,
          height: 320,
          child: Padding(
            padding: const EdgeInsets.only(right: 10, top: 5),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: cardBgColor,
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          list[index].header,
                          style: txtTheme.headlineSmall,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Flexible(
                        child: Image(
                          image: AssetImage(list[index].image),
                          height: 110,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: const CircleBorder()),
                        child: Icon(list[index].icon),
                      ),
                      const SizedBox(height: dashboardPadding),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            list[index].title,
                            style: txtTheme.headlineSmall,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            list[index].subtitle,
                            style: txtTheme.bodyMedium,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
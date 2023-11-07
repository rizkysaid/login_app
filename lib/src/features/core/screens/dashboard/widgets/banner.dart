import 'package:flutter/material.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';

class DashboardBanner extends StatelessWidget {
  const DashboardBanner({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: cardBgColor),
            padding: const EdgeInsets.symmetric(
                horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        child: Image(
                          image: AssetImage(bookmark),
                          height: 30,
                        )),
                    Flexible(
                        child:
                        Image(image: AssetImage(bannerImage1))),
                  ],
                ),
                const SizedBox(height: 25),
                Text(
                  dashboardBannerTitle1,
                  style: txtTheme.headlineSmall,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  dashboardBannerSubTitle,
                  style: txtTheme.bodyMedium,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: dashboardPadding),
        Expanded(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: cardBgColor),
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                            child: Image(
                              image: AssetImage(bookmark),
                              height: 30,
                            )),
                        Flexible(
                            child: Image(
                                image: AssetImage(bannerImage2))),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Text(
                      dashboardBannerTitle2,
                      style: txtTheme.headlineSmall,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      dashboardBannerSubTitle,
                      style: txtTheme.bodyMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(dashboardButton)),
              )
            ],
          ),
        )
      ],
    );
  }
}
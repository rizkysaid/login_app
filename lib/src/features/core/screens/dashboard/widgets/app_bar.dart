import 'package:flutter/material.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu, color: Colors.black),
      title: Text(appName, style: Theme.of(context).textTheme.headlineSmall),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20, top: 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: cardBgColor,
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(image: AssetImage(userProfileImage)),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}
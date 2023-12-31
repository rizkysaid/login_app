import 'package:flutter/material.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: const AssetImage(welcomeScreenImage),
          height: size.height * 0.2,
        ),
        Text(loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        Text(loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
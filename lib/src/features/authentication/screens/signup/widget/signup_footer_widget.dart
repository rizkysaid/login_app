import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/screens/login/login_screen.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        const SizedBox(height: formHeight-10),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: (){},
            icon: const Image(image: AssetImage(googleLogoImage), width: 20.0,),
            label: Text(signInWithGoogle.toUpperCase()),
          ),
        ),
        TextButton(
            onPressed: (){
              Get.to(const LoginScreen());
            },
            child: Text.rich(
                TextSpan(
                    children: [
                      TextSpan(text: alreadyHaveAnAccount, style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: login.toUpperCase()),
                    ]
                )
            )
        ),
      ],
    );
  }
}
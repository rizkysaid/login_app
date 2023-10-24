import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/forget_password_options/forget_password_btn_widget.dart';

class ForgetPasswordScreen{

static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(defaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            Text(forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 30),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mail_outline_rounded,
              title: email,
              subTitle: resetViaEmail,
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const ForgetPasswordMailScreen());
              },
            ),
            const SizedBox(height: 20),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              title: phoneNo,
              subTitle: resetViaPhone,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

}
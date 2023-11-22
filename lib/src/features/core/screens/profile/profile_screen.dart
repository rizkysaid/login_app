import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/core/screens/profile/widget/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text(profile, style: Theme.of(context).textTheme.headlineSmall),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(defaultSize),
          child: Column(
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(
                    image: AssetImage(profileImage),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(profileHeading,
                  style: Theme.of(context).textTheme.headlineSmall),
              Text(profileSubHeading,
                  style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    side: BorderSide.none,
                    shape: const StadiumBorder(),
                  ),
                  child: const Text(
                    editProfile,
                    style: TextStyle(color: darkColor),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),

              // MENU
              ProfileMenuWidget(title: "Settings", icon: LineAwesomeIcons.cog, onPress: (){}),
              ProfileMenuWidget(title: "Billing Details", icon: LineAwesomeIcons.wallet, onPress: (){}),
              ProfileMenuWidget(title: "User Management", icon: LineAwesomeIcons.user_check, onPress: (){}),
              const Divider(color: Colors.grey),
              const SizedBox(height: 10),
              ProfileMenuWidget(title: "Information", icon: LineAwesomeIcons.info, onPress: (){}),
              ProfileMenuWidget(
                  title: logoutDialogHeading,
                  icon: LineAwesomeIcons.alternate_sign_out,
                  textColor: Colors.red,
                  endIcon: false,
                  onPress: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

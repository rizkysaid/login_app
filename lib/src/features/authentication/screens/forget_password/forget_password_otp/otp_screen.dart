import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/controllers/otp_controller.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var otp;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(defaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                otpTitle,
                style: GoogleFonts.montserrat(
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                otpSubtitle.toUpperCase(),
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(
                height: 40.0,
              ),
              const Text(
                "$otpMessage rizkysaid.my.id",
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20.0,
              ),
              OtpTextField(
                numberOfFields: 6,
                fillColor: Colors.black.withOpacity(0.1),
                filled: true,
                onSubmit: (code){
                  otp = code;
                  OTPController.instance.verifyOTP(otp);
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    OTPController.instance.verifyOTP(otp);
                  },
                  child: const Text(next),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

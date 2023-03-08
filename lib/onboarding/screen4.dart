import 'package:flutter/material.dart';
import 'package:gdsc_ssa_task_managment_app/auth/sign_in.dart';
import 'package:gdsc_ssa_task_managment_app/onboarding/custom_button.dart';
import 'package:gdsc_ssa_task_managment_app/onboarding/reuseable_widget.dart';




class OnboardingScreen4 extends StatelessWidget {
  const OnboardingScreen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Scaffold(
    body: SafeArea(
      child: Column(
        children: [
           ReUseableWidget1(
            imgPath: "assets/images/hospital3.jpeg",
            subTitle:"xmgbhsjdhfklndsufhjkabjkflczsuidgfkabslfkgajybf.klghaseilfbjklasdhfhjkablkfhasdjfbkjlaewhdfyjgaekfnbaluy" ,
            title: "Reuseable widget ",
            buttonLabel: "Register",
            nextPage: RegisterPage(),

          ),
          SizedBox(height: 10,),
          CustomButton(
            btnColor: Colors.green,
            buttonLabel: "Log in",

          )
        ],
      ),
    ),
    );
  }
}


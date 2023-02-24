import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/pages/authentication/login_page.dart';
import 'package:lucely_app/pages/main/main_app.dart';
import 'package:lucely_app/widgets/button/primary_button.dart';
import 'package:lucely_app/widgets/input/primary_input.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/controller/pages/authentication/register_page_controller.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<RegisterPageController>(
      init: RegisterPageController(),
      builder: (controller) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(spacing * 3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Gap(5.w), // 10% of screen height
                  Wrap(
                    direction: Axis.vertical,
                    spacing: spacing * 2,
                    children: [
                      SizedBox(
                        height: spacing * 10, // 80
                        child: Image.asset('assets/images/lucely-logo.png'),
                      ),
                      Text("Sign Up",
                          style: Theme.of(context).textTheme.headlineSmall),
                      Text("Let's be better with Lucely!",
                          style: Theme.of(context).textTheme.bodyLarge),
                    ],
                  ),
                  const Gap(spacing * 5),
                  const PrimaryInput(
                    label: "Email",
                    placeholder: "fortunecookie@gmail.com",
                    textInputType: TextInputType.emailAddress,
                  ),
                  const Gap(spacing * 3),
                  const PrimaryInput(
                    label: "Password",
                    placeholder: "Min. 8 Characters",
                    isPassword: true,
                  ),
                  const Gap(spacing * 3),
                  const PrimaryInput(
                    label: "Retype your password",
                    placeholder: "Min. 8 Characters",
                    isPassword: true,
                  ),
                  const Gap(spacing * 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: spacing * 3,
                        height: spacing * 3,
                        child: Checkbox(
                          checkColor: Colors.white,
                          value: controller.isAgree.value,
                          onChanged: (e) => controller.toggleRemember(),
                        ),
                      ),
                      const Gap(spacing),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: RichText(
                            overflow: TextOverflow.clip,
                            text: TextSpan(
                                text: "I agree with",
                                style: Theme.of(context).textTheme.bodyMedium,
                                children: const [
                                  TextSpan(
                                    text: " Terms of Service",
                                    style: TextStyle(color: blue),
                                  ),
                                  TextSpan(text: " and"),
                                  TextSpan(
                                    text: " Privacy Policy",
                                    style: TextStyle(color: blue),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(spacing * 4),
                  PrimaryButton(
                    onPressed: () => Get.to(() => const MainApp(),
                        transition: Transition.fadeIn,
                        duration: const Duration(milliseconds: 500)),
                    title: "Sign Up",
                    type: ButtonType.primary,
                    isLoading: false,
                  ),
                  const Gap(spacing * 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const Gap(spacing / 2),
                      InkWell(
                        onTap: () => Get.to(() => const LoginPage(),
                            transition: Transition.downToUp,
                            duration: const Duration(milliseconds: 500)),
                        child: Text(
                          "Sign In",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: blue),
                        ),
                      ),
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

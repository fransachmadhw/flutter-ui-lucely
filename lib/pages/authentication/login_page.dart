import 'package:flutter/material.dart';
import 'package:lucely_app/common/font_size.dart';
import 'package:lucely_app/pages/authentication/register_page.dart';
import 'package:lucely_app/pages/main/main_app.dart';
import 'package:sizer/sizer.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/controller/pages/authentication/login_page_controller.dart';
import 'package:lucely_app/widgets/button/primary_button.dart';
import 'package:lucely_app/widgets/input/primary_input.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    FontSize().init(context);

    return GetX<LoginPageController>(
      init: LoginPageController(),
      builder: (controller) => Scaffold(
        backgroundColor: white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(spacing * 3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Gap(15.w), // 10% of screen height
                  Wrap(
                    direction: Axis.vertical,
                    spacing: spacing * 2,
                    children: [
                      SizedBox(
                        height: FontSize.blockSizeVertical! * 10,
                        child: Image.asset('assets/images/lucely-logo.png'),
                      ),
                      Text("Sign In",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                  fontSize: FontSize.blockSizeHorizontal! * 7)),
                      Text("Be better with Lucely",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  fontSize: FontSize.blockSizeHorizontal! * 4)),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Wrap(
                        direction: Axis.horizontal,
                        spacing: spacing,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          SizedBox(
                            width: spacing * 3,
                            height: spacing * 3,
                            child: Checkbox(
                              checkColor: Colors.white,
                              value: controller.isRememberMe.value,
                              onChanged: (e) => controller.toggleRemember(),
                            ),
                          ),
                          Text(
                            "Remember Me",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "Forgot password?",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: blue),
                        ),
                      )
                    ],
                  ),
                  const Gap(spacing * 4),
                  PrimaryButton(
                    onPressed: () => Get.off(() => const MainApp(),
                        transition: Transition.fadeIn,
                        duration: const Duration(milliseconds: 500)),
                    title: "Sign In",
                    type: ButtonType.primary,
                    isLoading: false,
                  ),
                  const Gap(spacing * 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const Gap(spacing / 2),
                      InkWell(
                        onTap: () => Get.to(() => const RegisterPage(),
                            transition: Transition.downToUp,
                            duration: const Duration(milliseconds: 500)),
                        child: Text(
                          "Register here",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: blue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

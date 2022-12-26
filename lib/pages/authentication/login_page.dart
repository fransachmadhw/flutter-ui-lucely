import 'package:flutter/material.dart';
import 'package:lucely_app/pages/authentication/register_page.dart';
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
    return GetX<LoginPageController>(
      init: LoginPageController(),
      builder: (controller) => Scaffold(
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
                        height: spacing * 10, // 80
                        child: Image.asset('assets/images/lucely-logo.png'),
                      ),
                      Text("Login",
                          style: Theme.of(context).textTheme.headlineSmall),
                      Text("Yuk jadi lebih baik bersama Lucely",
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
                    label: "Kata Sandi",
                    placeholder: "Min. 8 Karakter",
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
                            "Ingat Saya",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "Lupa Kata Sandi?",
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
                    onPressed: () {},
                    title: "Login",
                    type: ButtonType.primary,
                    isLoading: false,
                  ),
                  const Gap(spacing * 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Belum mempunyai akun?",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const Gap(spacing / 2),
                      InkWell(
                        onTap: () => Get.to(() => RegisterPage()),
                        child: Text(
                          "Buat Akun",
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

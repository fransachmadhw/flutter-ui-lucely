import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/pages/authentication/login_page.dart';
import 'package:lucely_app/widgets/button/primary_button.dart';
import 'package:lucely_app/widgets/input/primary_input.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/controller/pages/authentication/register_page_controller.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final pageController = Get.put(RegisterPageController());

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
                  const PrimaryInput(
                    label: "Konfirmasi Kata Sandi",
                    placeholder: "Min. 8 Karakter",
                    isPassword: true,
                  ),
                  const Gap(spacing * 4),
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
                                text: "Saya setuju dengan",
                                style: Theme.of(context).textTheme.bodyMedium,
                                children: const [
                                  TextSpan(
                                    text: " Terms of Service",
                                    style: TextStyle(color: blue),
                                  ),
                                  TextSpan(text: " dan"),
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
                    onPressed: () {},
                    title: "Buat Akun",
                    type: ButtonType.primary,
                    isLoading: false,
                  ),
                  const Gap(spacing * 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sudah mempunyai akun?",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const Gap(spacing / 2),
                      InkWell(
                        onTap: () => Get.to(() => const LoginPage()),
                        child: Text(
                          "Masuk",
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

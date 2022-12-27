import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/pages/main/main_app.dart';
import 'package:lucely_app/widgets/button/primary_button.dart';
import 'package:lucely_app/widgets/dialog/success_dialog.dart';
import 'package:lucely_app/widgets/input/primary_input.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    void openDialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) => SuccessDialog(
          title: "Kata Sandi Berhasil Diganti",
          // subTitle: "Akun Berhasil Diperbarui",
          onPressed: () => Get.to(() => MainApp()),
          image: 'assets/images/kata_sandi_berhasil.png',
        ),
      );
    }

    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        shape: Border(bottom: BorderSide(color: veryLightGrey, width: 1)),
        backgroundColor: white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Iconify(MaterialSymbols.arrow_back_ios_new_rounded)),
        centerTitle: true,
        title: Text("Ganti Kata Sandi",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.w700, fontSize: 15)),
      ),
      body: Padding(
        padding: EdgeInsets.all(spacing * 3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'assets/images/icons/password.svg',
                  color: yellow,
                  width: spacing * 6,
                ),
              ],
            ),
            Gap(spacing * 2),
            SizedBox(
              width: 10,
              child: Text("Isikan kata sandi lama dan\nkata sandi baru anda",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.normal, fontSize: 16)),
            ),
            Gap(spacing * 2),
            Container(
              // width: 200,
              height: 1,
              decoration: BoxDecoration(color: lightGrey),
            ),
            Gap(spacing * 2),
            const PrimaryInput(
              label: "Kata Sandi Lama",
              placeholder: "kata sandi lama",
              // textInputType: TextInputType.emailAddress,
              isPassword: true,
            ),
            Gap(spacing * 2),
            const PrimaryInput(
              label: "Kata Sandi Baru",
              placeholder: "kata sandi baru",
              // textInputType: TextInputType.emailAddress,
              isPassword: true,
            ),
            Gap(spacing * 7),
            PrimaryButton(
              onPressed: () => openDialog(),
              title: "Ganti Kata Sandi",
              type: ButtonType.primary,
              isLoading: false,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/font_size.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/pages/account/change_password_page.dart';
import 'package:lucely_app/pages/main/main_app.dart';
import 'package:lucely_app/widgets/button/primary_button.dart';
import 'package:lucely_app/widgets/dialog/success_dialog.dart';
import 'package:lucely_app/widgets/input/primary_input.dart';

class EditAccount extends StatelessWidget {
  const EditAccount({super.key});

  @override
  Widget build(BuildContext context) {
    FontSize().init(context);
    void openDialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) => SuccessDialog(
          title: "Account updated successfully",
          // subTitle: "Akun Berhasil Diperbarui",
          onPressed: () => Get.to(() => MainApp()),
          image: 'assets/images/akun_berhasil.png',
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
        title: Text("Edit Account",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: FontSize.blockSizeHorizontal! * 4)),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(spacing * 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(radius * 10),
                        image: DecorationImage(
                            image: AssetImage('assets/images/fotoOrang.jpg'),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
              Gap(spacing * 3),
              const PrimaryInput(
                label: "First name",
                placeholder: "Sayonara",
              ),
              Gap(spacing * 2),
              const PrimaryInput(
                label: "Last name",
                placeholder: "Sayonara",
              ),
              Gap(spacing * 2),
              const PrimaryInput(
                label: "WhatsApp number",
                placeholder: "089xxxxxxxxx",
              ),
              Gap(spacing * 2),
              const PrimaryInput(
                label: "Email",
                placeholder: "fortunecookie@gmail.com",
                textInputType: TextInputType.emailAddress,
              ),
              Gap(spacing * 3),
              Container(
                // width: 200,
                height: 1,
                decoration: BoxDecoration(color: lightGrey),
              ),
              ElevatedButton(
                onPressed: () => Get.to(() => ChangePassword(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 500)),
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  // shape: MaterialStateProperty.all(
                  //   RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(0),
                  //     side: BorderSide(width: 1, color: lightGrey),
                  //   ),
                  // ),
                ),
                child: Container(
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/icons/lock.svg',
                            color: blue,
                            width: spacing * 3,
                          ),
                          Gap(spacing * 1),
                          Text("Change Password",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                // width: 200,
                height: 1,
                decoration: BoxDecoration(color: lightGrey),
              ),
              Gap(spacing * 7),
              PrimaryButton(
                onPressed: () => openDialog(),
                title: "Save",
                type: ButtonType.primary,
                isLoading: false,
              ),
            ],
          ),
        ),
      )),
    );
  }
}

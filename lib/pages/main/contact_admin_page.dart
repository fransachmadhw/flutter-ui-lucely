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

class ContactAdmin extends StatelessWidget {
  const ContactAdmin({super.key});

  @override
  Widget build(BuildContext context) {
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
        title: Text("Contact Admin",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.w700, fontSize: 15)),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(spacing * 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: spacing * 3),
                    child: Image.asset(
                      'assets/images/kontak_admin.png',
                      width: 300,
                      // height: 224,
                    ),
                  ),
                ],
              ),
              Text("WORK HOURS: 8:00 am - 17:00 pm",
                  // textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.w700, fontSize: 15)),
              Gap(spacing * 3),
              Text("Please contact us from",
                  // textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.normal, fontSize: 14)),
              Gap(spacing * 2),
              Text("E-mail - info@lucely.id",
                  // textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.normal, fontSize: 14)),
              Gap(spacing * 2),
              Text("WhatsApp - 081xxxxxxxxxx",
                  // textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.normal, fontSize: 14)),
            ],
          ),
        ),
      )),
    );
  }
}

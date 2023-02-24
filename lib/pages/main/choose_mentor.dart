import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/pages/main/main_app.dart';
import 'package:lucely_app/widgets/button/counseling_button.dart';
import 'package:lucely_app/widgets/card/counseling_card.dart';
import 'package:lucely_app/widgets/dialog/success_dialog.dart';

class ChooseMentor extends StatelessWidget {
  const ChooseMentor({super.key});

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
        title: Text("Choose your mentor",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.w700, fontSize: 15)),
      ),
    );
  }
}

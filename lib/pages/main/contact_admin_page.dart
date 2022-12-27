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
        title: Text("Kontak Admin",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.w700, fontSize: 15)),
      ),
    );
  }
}

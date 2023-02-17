import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/data/psychologist_model.dart';

class PsychologistPage extends StatelessWidget {
  final PsychologistModel psychologistModel;

  const PsychologistPage({super.key, required this.psychologistModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: Border(bottom: BorderSide(color: veryLightGrey, width: 1)),
          backgroundColor: white,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: Iconify(MaterialSymbols.arrow_back_ios_new_rounded)),
          centerTitle: true,
          title: Text("Detail Psikolog",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.w700, fontSize: 15)),
        ),
        body:
            // Column(
            //   children: [
            //     Container(
            //       height: 260.0,
            //       width: 200,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(10),
            //         image: DecorationImage(
            //           image: AssetImage(psychologistModel.imageUrl),
            //           fit: BoxFit.cover,
            //         ),
            //       ),
            //     ),
            //     Text(psychologistModel.name)
            //   ],
            // ),
            SafeArea(
                child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(spacing * 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                    child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(psychologistModel.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Gap(spacing * 2),
                    Text(psychologistModel.name,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.w700, fontSize: 17)),
                    Gap(spacing * 1),
                    SizedBox(
                      width: 210,
                      child: Text(
                          "Kepribadian, Kecemasan, Trauma, Pengembangan Diri, +3 lainnya",
                          maxLines: 5,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13,
                                  color: darkGrey)),
                    ),
                    Gap(spacing * 1),
                    Text("SIPP: 13324233",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.normal, fontSize: 13)),
                  ],
                ))
              ],
            ),
          ),
        )));
  }
}

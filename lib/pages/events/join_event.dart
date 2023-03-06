import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/font_size.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/data/events_model.dart';
import 'package:lucely_app/pages/events/choose_events.dart';
import 'package:lucely_app/pages/main/main_app.dart';
import 'package:lucely_app/widgets/button/primary_button.dart';
import 'package:lucely_app/widgets/dialog/success_dialog.dart';
import 'package:lucely_app/widgets/input/primary_input.dart';

class JoinEvent extends StatelessWidget {
  final EventsModel eventsModel;
  const JoinEvent({super.key, required this.eventsModel});

  @override
  Widget build(BuildContext context) {
    FontSize().init(context);
    void openDialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) => SuccessDialog(
          title: "Registered Succefully",
          subTitle: "Please join the Telegram Group from bit.ly/EventGroup",
          onPressed: () => Get.to(() => MainApp(),
              duration: const Duration(milliseconds: 300)),
          image: 'assets/images/calendar-vector.png',
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
        title: Text("Participant Detail",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: FontSize.blockSizeHorizontal! * 4)),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: veryLightGrey, width: 1))),
              padding: EdgeInsets.all(spacing * 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: FontSize.blockSizeHorizontal! * 22,
                    height: FontSize.blockSizeHorizontal! * 22,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(radius / 2),
                        image: DecorationImage(
                            image: AssetImage(eventsModel.imageUrl),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: FontSize.blockSizeHorizontal! * 50,
                    child: Column(
                      children: [
                        Text(eventsModel.name,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize:
                                        FontSize.blockSizeHorizontal! * 4)),
                        Gap(spacing),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/icons/Calendar.svg',
                              color: yellow,
                              width: FontSize.blockSizeHorizontal! * 4,
                            ),
                            Gap(spacing / 2),
                            Text('Wednesday, 27 February 2023',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize:
                                            FontSize.blockSizeHorizontal! * 3,
                                        color: darkGrey)),
                          ],
                        ),
                        Gap(spacing / 2),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/icons/TimeCircle.svg',
                              color: blue,
                              width: FontSize.blockSizeHorizontal! * 4,
                            ),
                            Gap(spacing / 2),
                            Text('2:00 PM - 3:30 PM',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize:
                                            FontSize.blockSizeHorizontal! * 3,
                                        color: darkGrey)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(spacing * 3),
              child: Column(
                children: [
                  PrimaryInput(
                    label: "Name",
                    placeholder: "Input Text",
                  ),
                  Gap(spacing * 3),
                  PrimaryInput(
                    label: "Email",
                    placeholder: "Input Text",
                    textInputType: TextInputType.emailAddress,
                  ),
                  Gap(spacing * 3),
                  PrimaryInput(
                    label: "Phone Number",
                    placeholder: "Input Text",
                    textInputType: TextInputType.phone,
                  ),
                  Gap(spacing * 3),
                  Text(
                      'Upcoming information will be sent to your email or your phone number.',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.normal,
                            fontSize: FontSize.blockSizeHorizontal! * 3,
                          )),
                ],
              ),
            )
          ],
        ),
      )),
      bottomNavigationBar: Container(
          height: FontSize.blockSizeVertical! * 10.5,
          decoration: BoxDecoration(
              color: white,
              border: Border(top: BorderSide(color: lightGrey, width: 1))),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(spacing * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PrimaryButton(
                      onPressed: () => openDialog(),
                      title: "Join Event",
                      type: ButtonType.primary,
                      isLoading: false)
                ],
              ),
            ),
          )),
    );
  }
}

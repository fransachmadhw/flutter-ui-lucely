import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/widgets/button/primary_button.dart';

class SuccessDialog extends StatelessWidget {
  final Function onPressed;
  final title, subTitle;
  final image;
  const SuccessDialog(
      {super.key,
      required this.onPressed,
      this.title,
      this.subTitle,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title ?? '',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            subTitle ?? "",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: spacing * 2),
          SizedBox(
            width: 100,
            height: 100,
            child: Image(image: AssetImage(image)),
          ),
          Gap(spacing * 4),
          PrimaryButton(
              isLoading: false,
              onPressed: onPressed,
              title: "OK",
              type: ButtonType.primary),
        ],
      ),
    );
  }
}

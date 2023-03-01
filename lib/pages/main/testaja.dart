import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/data/psychologist_model.dart';

class TestAja extends StatelessWidget {
  final PsychologistModel psychologistModel;
  const TestAja({super.key, required this.psychologistModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Center(
          child: Text(psychologistModel.name,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.w700, fontSize: 17)),
        ),
      ),
    );
  }
}

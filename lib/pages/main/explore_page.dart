import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/widgets/card/category_card.dart';
import 'package:lucely_app/widgets/input/rounded_search_input.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(spacing * 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Awal kesejateraan mentalmu dimulai dari sini..",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const Gap(spacing * 3),
                const RoundedSearchInput(
                  placeholder: "Cari topik permasalahan",
                ),
                const Gap(spacing * 3),
                Wrap(
                  direction: Axis.horizontal,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.start,
                  spacing: spacing,
                  children: const [
                    CategoryCard(label: "Kecemasan"),
                    CategoryCard(label: "Overthinking"),
                    CategoryCard(label: "Pendidikan"),
                    CategoryCard(label: "Stress"),
                    CategoryCard(label: "Keluarga"),
                    CategoryCard(label: "Self-development"),
                    CategoryCard(label: "Self-love"),
                    CategoryCard(label: "Productivity")
                  ],
                ),
                const Gap(spacing * 3),
                Wrap(
                  direction: Axis.horizontal,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.start,
                  spacing: spacing,
                  children: const [
                    CategoryCard(label: "Konseling"),
                    CategoryCard(label: "Bookluce"),
                    CategoryCard(label: "Event"),
                    CategoryCard(label: "LuceGuide")
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

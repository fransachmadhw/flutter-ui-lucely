import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lucely_app/common/sizing.dart';

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
              children: [
                Text(
                  "Awal kesejateraan mentalmu dimulai dari sini..",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:islami/ui/utilits/app_assets.dart';
import 'package:islami/ui/utilits/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String routeName = "homeScreen";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.background), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: AppColors.transparent,
      ),
    );
  }
}

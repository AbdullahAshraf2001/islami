import 'package:flutter/material.dart';
import 'package:islami/ui/screens/home/tabs/ahadethTab/ahadethTab.dart';
import 'package:islami/ui/screens/home/tabs/quranTab/quranTab.dart';
import 'package:islami/ui/screens/home/tabs/radioTab/radioTab.dart';
import 'package:islami/ui/screens/home/tabs/sebhaTab/sebhaTab.dart';
import 'package:islami/ui/utilits/app_assets.dart';
import 'package:islami/ui/utilits/app_colors.dart';
import 'package:islami/ui/utilits/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = "homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTabIndex = 0;
  List<Widget> tabs = [QuranTab(), AhadethTab(), SebhaTab(), RadioTab()];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.background), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.transparent,
          centerTitle: true,
          title: const Text(
            "Islami",
            style: AppTheme.appBarTitleTextStyle,
          ),
        ),
        body: tabs[currentTabIndex],
        bottomNavigationBar: buildBottomNavigationBar(),
      ),
    );
  }

  Widget buildBottomNavigationBar() => Theme(
        data: ThemeData(canvasColor: AppColors.primiary),
        child: BottomNavigationBar(
          currentIndex: currentTabIndex,
          onTap: (index) {
            currentTabIndex = index;
            setState(() {});
          },
          selectedItemColor: AppColors.accent,
          iconSize: 30,
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppAssets.icQuran)), label: "Quran"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppAssets.icAhadeth)),
                label: "Ahadeth"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppAssets.icSebha)), label: "Sebha"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AppAssets.icRadio)), label: "Radio"),
          ],
        ),
      );
}

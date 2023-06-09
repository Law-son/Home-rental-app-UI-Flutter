import 'package:fashionhub/home_screen/home_components/app_bar.dart';
import 'package:fashionhub/home_screen/home_components/best_for_you.dart';
import 'package:fashionhub/home_screen/home_components/category_tab.dart';
import 'package:fashionhub/home_screen/home_components/home_cards.dart';
import 'package:fashionhub/home_screen/home_components/near_you.dart';
import 'package:fashionhub/home_screen/home_components/other_cards.dart';
import 'package:fashionhub/home_screen/home_components/search_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: const MyAppBar(),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: const [
               SearchBar(),
               CategoryTab(),
               NearYou(),
               HomeCards(),
               Best4You(),
               OtherCards()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

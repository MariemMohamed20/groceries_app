import 'package:flutter/material.dart';
import 'package:groceries/screen/home/widgets/home_header.dart';
import 'package:groceries/screen/home/widgets/search_field.dart';
import 'package:groceries/screen/home/widgets/title_row.dart';
import 'package:groceries/screen/home/widgets/exclusive _offer.dart';
import 'package:groceries/screen/home/widgets/banner.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ListView(
              children: [
               HomeHeader(),
                SizedBox(height: 20),
                SearchField(),
                SizedBox(height: 20),
                HomeBanner(),
                SizedBox(height: 30),
               TitleRow(
                  title: "Exclusive Offer",
               ),
                SizedBox(height: 20),
                ExclusiveOffer(),
                SizedBox(height: 29),
                TitleRow(
                  title: "Best Selling",
                ),
                SizedBox(height: 20),
               ExclusiveOffer(
           
               ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

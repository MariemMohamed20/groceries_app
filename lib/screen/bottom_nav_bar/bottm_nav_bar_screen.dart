import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/screen/favorites/favorits_screen.dart';
import 'package:groceries/screen/home/home_screen.dart';


class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int activeIndex = 0;
 List<Widget> screens = [
    HomeScreen(),
  
    Center(child: Text('Explore Screen')),
    Center(child: Text('Cart Screen')),
   const FavoritsScreen(),
   
    Center(child: Text('Account Screen')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: activeIndex,
        selectedItemColor: Colors.green,
        onTap: (index) {
          setState(() {
            activeIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/shop.svg',
            colorFilter: activeIndex== 0 ? ColorFilter.mode(Color(0xff53B175), BlendMode.srcIn) : null,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/explore.svg',
            colorFilter: activeIndex== 1 ? ColorFilter.mode(Color(0xff53B175), BlendMode.srcIn) : null,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/cart.svg',
            colorFilter: activeIndex== 2 ? ColorFilter.mode(Color(0xff53B175), BlendMode.srcIn)  : null,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/favourite.svg',
            colorFilter: activeIndex== 3 ? ColorFilter.mode(Color(0xff53B175), BlendMode.srcIn) : null,
            ),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/account.svg',
            colorFilter: activeIndex== 4 ? ColorFilter.mode(Color(0xff53B175), BlendMode.srcIn) : null,
            ),
            label: 'Account',
          ),
        ],
      ),
     body: screens[activeIndex]
    );
  }
}

import 'package:flutter/material.dart';
import 'package:groceries/screen/bottom_nav_bar/bottm_nav_bar_screen.dart';

class OrderAcceptedScreen extends StatelessWidget {
  const OrderAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(), 
            Image.asset(
              'assets/images/Group 6872.png',
              height: 220,
            ),
            const SizedBox(height: 40),
            const Text(
              "Your Order has been\naccepted",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              "Your items has been placcd and is on\nit's way to being processed",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            
            const Spacer(), 
            ElevatedButton(
              onPressed: (
              ) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNavBarScreen())); 
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF53B175), 
                minimumSize: const Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
                elevation: 0,
              ),
              child: const Text(
                "Track Order",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 15),
            TextButton(
              onPressed: () {
                Navigator.pop(context); 
              },
              child: const Text(
                "Back to home",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

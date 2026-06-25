import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assets/images/Rectangle 82.png'),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text(
                                "Afsar Hossen",
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                              ),
                              SizedBox(width: 5),
                              Icon(Icons.edit, color: Colors.green, size: 18), 
                            ],
                          ),
                          const SizedBox(height: 3),
                          const Text(
                            "Imshuvo97@gmail.com",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Divider(height: 1), 
                ListTile(
                  leading: const Icon(Icons.shopping_bag_outlined, color: Colors.black),
                  title: const Text("Orders", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 16),
                  onTap: () {},
                ),
                const Divider(height: 1),
                ListTile(
                  leading: const Icon(Icons.badge_outlined, color: Colors.black),
                  title: const Text("My Details", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 16),
                  onTap: () {},
                ),
                const Divider(height: 1),
                ListTile(
                  leading: const Icon(Icons.location_on_outlined, color: Colors.black),
                  title: const Text("Delivery Address", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 16),
                  onTap: () {},
                ),
                const Divider(height: 1),
                ListTile(
                  leading: const Icon(Icons.credit_card, color: Colors.black),
                  title: const Text("Payment Methods", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 16),
                  onTap: () {},
                ),
                const Divider(height: 1),
                ListTile(
                  leading: const Icon(Icons.confirmation_number_outlined, color: Colors.black),
                  title: const Text("Promo Cord", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 16),
                  onTap: () {},
                ),
                const Divider(height: 1),
                ListTile(
                  leading: const Icon(Icons.notifications_none, color: Colors.black),
                  title: const Text("Notifecations", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 16),
                  onTap: () {},
                ),
                const Divider(height: 1),
                ListTile(
                  leading: const Icon(Icons.help_outline, color: Colors.black),
                  title: const Text("Help", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 16),
                  onTap: () {},
                ),
                const Divider(height: 1),
                ListTile(
                  leading: const Icon(Icons.error_outline, color: Colors.black),
                  title: const Text("About", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 16),
                  onTap: () {},
                ),
                const Divider(height: 1),
                
                const SizedBox(height: 40),
                Container(
                  width: double.infinity,
                  height: 65,
                  decoration: BoxDecoration(
                    color: const Color(0xffF2F3F2), 
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: const [
                      SizedBox(width: 25),
                      Icon(Icons.logout, color: Color(0xff53B175), size: 24), 
                      Expanded(
                        child: Text(
                          "Log Out",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff53B175), 
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(width: 45), 
                    ],
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
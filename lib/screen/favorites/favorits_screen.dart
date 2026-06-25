import 'package:flutter/material.dart';

class FavoritsScreen extends StatelessWidget {
  const FavoritsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Favorite",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          // 1. Sprite Can
          ListTile(
            leading: Image.asset(
              'assets/images/Group 6874.png',
              width: 50,
              height: 50,
            ),
            title: const Text(
              "Sprite Can",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text("325ml, Price"),
            trailing: const Text(
              "\$1.50",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          const Divider(height: 20, thickness: 1, indent: 20, endIndent: 20), // الفاصل الصحيح

          // 2. Diet Coke
          ListTile(
            leading: Image.asset(
              'assets/images/pngfuel 11.png',
              width: 50,
              height: 50,
              fit: BoxFit.contain,
            ),
            title: const Text(
              "Diet Coke",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text("355ml, Price"),
            trailing: const Text(
              "\$1.99",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          const Divider(height: 20, thickness: 1, indent: 20, endIndent: 20),

          // 3. Apple & Grape Juice
          ListTile(
            leading: Image.asset(
              'assets/images/tree-top-juice-apple-grape-64oz 1.png',
              width: 50,
              height: 50,
              fit: BoxFit.contain,
            ),
            title: const Text(
              "Apple & Grape Juice",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text("2L, Price"),
            trailing: const Text(
              "\$15.50",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          const Divider(height: 20, thickness: 1, indent: 20, endIndent: 20),

          // 4. Coca Cola Can
          ListTile(
            leading: Image.asset(
              'assets/images/pngfuel 13.png',
              width: 50,
              height: 50,
              fit: BoxFit.contain,
            ),
            title: const Text(
              "Coca Cola Can",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text("325ml, Price"),
            trailing: const Text(
              "\$4.99",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          const Divider(height: 20, thickness: 1, indent: 20, endIndent: 20),

          // 5. Pepsi Can
          ListTile(
            leading: Image.asset(
              'assets/images/pngfuel 14.png',
              width: 50,
              height: 50,
              fit: BoxFit.contain,
            ),
            title: const Text(
              "Pepsi Can",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text("330ml, Price"),
            trailing: const Text(
              "\$4.99",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          const SizedBox(height: 20), // مسافة بسيطة في الأسفل لإنهاء القائمة
        ],
      ),
      
      // وضع الزر الأخضر الكبير هنا ليكون ثابتاً ومميزاً في أسفل شاشة المفضلات
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: double.infinity,
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color(0xff53B175),
            borderRadius: BorderRadius.circular(19),
          ),
          child: const Text(
            "Add All To Cart",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

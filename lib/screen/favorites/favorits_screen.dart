import 'package:flutter/material.dart';

class FavoritsScreen extends StatelessWidget {
  const FavoritsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // 1. شريط العنوان العلوي
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
        children: [
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
              "\$1.50  ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),

          TextFormField(),

          ListTile(
            leading: Image.asset(
              'assets/images/pngfuel 11.png', // مسار صورة الدايت كوك
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
              "\$1.99  ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),

          TextFormField(),

          // المنتج الثالث: Apple & Grape Juice
          ListTile(
            leading: Image.asset(
              'assets/images/tree-top-juice-apple-grape-64oz 1.png', // مسار صورة العصير
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
              "\$15.50  ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),

          TextFormField(),

          ListTile(
            leading: Image.asset(
              'assets/images/pngfuel 13.png', // مسار صورة العصير
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
              "\$4.99  ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          TextFormField(),
          ListTile(
            leading: Image.asset(
              'assets/images/pngfuel 14.png', // مسار صورتك الحالي في الكود
              width: 50,
              height: 50,
              fit: BoxFit.contain,
            ),
            title: const Text(
              "Pepsi Can",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text("330ml, Price"),

            // 🔽 امسحي الـ trailing القديم واكتبي هذا مكانه بالظبط 🔽
            trailing: const SizedBox(
              width: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "\$4.99",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(width: 5),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

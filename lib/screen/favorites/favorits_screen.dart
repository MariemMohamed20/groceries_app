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
          const Divider(height: 20, thickness: 1, indent: 20, endIndent: 20), 
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
          const SizedBox(height: 20),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: InkWell(
          onTap: () {
            showDialog(
              context: context,
              barrierDismissible: false, 
              builder: (BuildContext context) {
                return Dialog(
                  backgroundColor: Color( 0xffFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min, 
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            icon: const Icon(Icons.close, color: Colors.black),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ),
                        Image.asset(
                          'assets/images/image 13.png', 
                          height: 150,
                        ),
                        const SizedBox(height: 25),
                        const Text(
                          "Oops! Order Failed",
                          style: TextStyle(
                            fontSize: 24, 
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF181725),
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          "Something went terribly wrong.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff7C7C7C),
                          ),
                        ),
                        const SizedBox(height: 30),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff53B175),
                            minimumSize: const Size(double.infinity, 55),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Text(
                            "Please Try Again",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        // زرار العودة للرئيسية
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            "Back to home",
                            style: TextStyle(
                              color: Color(0xFF181725),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
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
      ),
    ); 
  } 
} 
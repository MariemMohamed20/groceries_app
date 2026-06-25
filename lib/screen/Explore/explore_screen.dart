import 'package:flutter/material.dart';

class FindProductsScreen extends StatelessWidget {
  const FindProductsScreen({super.key});
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Find Products",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xffF2F3F2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: const [
                    SizedBox(width: 15),
                    Icon(Icons.search, color: Colors.black, size: 24),
                    SizedBox(width: 10),
                    Text(
                      "Search Store",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 190,
                      decoration: BoxDecoration(
                        color: const Color(0xffEEF8F2), 
                        border: Border.all(color: const Color(0xff53B175).withOpacity(0.3)),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/vegetables.png', height: 90, fit: BoxFit.contain),
                          const SizedBox(height: 15),
                          const Text(
                            "Frash Fruits\n& Vegetable",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 15), 
                  Expanded(
                    child: Container(
                      height: 190,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFF6EE),
                        border: Border.all(color: const Color(0xffF8A44C).withOpacity(0.3)),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/oil.png', height: 90, fit: BoxFit.contain),
                          const SizedBox(height: 15),
                          const Text(
                            "Cooking Oil & Ghee",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 190,
                      decoration: BoxDecoration(
                        color: const Color(0xffFDE9E4),
                        border: Border.all(color: const Color(0xffF7A593).withOpacity(0.3)),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/fish.png', height: 90, fit: BoxFit.contain),
                          const SizedBox(height: 15),
                          const Text(
                            "Meat & Fish",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Container(
                      height: 190,
                      decoration: BoxDecoration(
                        color: const Color(0xffF4EBF7),
                        border: Border.all(color: const Color(0xffD3B0E0).withOpacity(0.3)),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/bakery.png', height: 90, fit: BoxFit.contain),
                          const SizedBox(height: 15),
                          const Text(
                            "Bakery & Snacks",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height:15 ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 190,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFF9E5), 
                        border: Border.all(color: const Color(0xffFDE598).withOpacity(0.3)),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/dairy.png', height: 90, fit: BoxFit.contain),
                          const SizedBox(height: 15),
                          const Text(
                            "Dairy & Eggs",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Container(
                      height: 190,
                      decoration: BoxDecoration(
                        color: const Color(0xffEDF7FC), // اللون الأزرق الفاتح
                        border: Border.all(color: const Color(0xffB7DFF5).withOpacity(0.3)),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/Beverages.png', height: 90, fit: BoxFit.contain),
                          const SizedBox(height: 15),
                          const Text(
                            "Beverages",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
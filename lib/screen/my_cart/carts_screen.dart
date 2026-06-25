import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "My Cart",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
       
      body: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/images/pepper.png', width: 60, height: 60),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Bell Pepper Red", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                            Icon(Icons.close, color: Colors.grey[400]),
                          ],
                        ),
                        const Text("1kg, Price", style: TextStyle(color: Colors.grey)),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              width: 35, height: 35,
                              decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
                              child: const Icon(Icons.remove, color: Colors.grey),
                            ),
                            const SizedBox(width: 10),
                            const Text("1", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                            const SizedBox(width: 10),
                            Container(
                              width: 35, height: 35,
                              decoration: BoxDecoration(border: Border.all(color: Colors.grey[300]!), borderRadius: BorderRadius.circular(10)),
                              child: const Icon(Icons.add, color: Colors.green),
                            ),
                            const Spacer(),
                            const Text("\$4.99", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Divider(height: 30),

              
              Row(
                children: [
                  Image.asset('assets/images/eggs.png', width: 60, height: 60),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Egg Chicken Red", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                            Icon(Icons.close, color: Colors.grey[400]),
                          ],
                        ),
                        const Text("4pcs, Price", style: TextStyle(color: Colors.grey)),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              width: 35, height: 35,
                              decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
                              child: const Icon(Icons.remove, color: Colors.grey),
                            ),
                            const SizedBox(width: 10),
                            const Text("1", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                            const SizedBox(width: 10),
                            Container(
                              width: 35, height: 35,
                              decoration: BoxDecoration(border: Border.all(color: Colors.grey[300]!), borderRadius: BorderRadius.circular(10)),
                              child: const Icon(Icons.add, color: Colors.green),
                            ),
                            const Spacer(),
                            const Text("\$1.99", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Divider(height: 30),

              
              Row(
                children: [
                  Image.asset('assets/images/Banana.png', width: 60, height: 60),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Organic Bananas", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                            Icon(Icons.close, color: Colors.grey[400]),
                          ],
                        ),
                        const Text("12kg, Price", style: TextStyle(color: Colors.grey)),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              width: 35, height: 35,
                              decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
                              child: const Icon(Icons.remove, color: Colors.grey),
                            ),
                            const SizedBox(width: 10),
                            const Text("1", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                            const SizedBox(width: 10),
                            Container(
                              width: 35, height: 35,
                              decoration: BoxDecoration(border: Border.all(color: Colors.grey[300]!), borderRadius: BorderRadius.circular(10)),
                              child: const Icon(Icons.add, color: Colors.green),
                            ),
                            const Spacer(),
                            const Text("\$3.00", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Divider(height: 30),

             
              Row(
                children: [
                  Image.asset('assets/images/Potato.png', width: 60, height: 60),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Ginger", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                            Icon(Icons.close, color: Colors.grey[400]),
                          ],
                        ),
                        const Text("250gm, Price", style: TextStyle(color: Colors.grey)),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              width: 35, height: 35,
                              decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
                              child: const Icon(Icons.remove, color: Colors.grey),
                            ),
                            const SizedBox(width: 10),
                            const Text("1", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                            const SizedBox(width: 10),
                            Container(
                              width: 35, height: 35,
                              decoration: BoxDecoration(border: Border.all(color: Colors.grey[300]!), borderRadius: BorderRadius.circular(10)),
                              child: const Icon(Icons.add, color: Colors.green),
                            ),
                            const Spacer(),
                            const Text("\$2.99", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              
              const SizedBox(height: 30),

              
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xff53B175),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(width: 40), 
                    const Text(
                      "Go to Checkout",
                      style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color(0xff53B175),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        "\$12.96",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
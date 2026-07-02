import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groceries/screen/order%20accepted/order_accepted_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  void showCheckoutBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent, 
      builder: (BuildContext context) {
        return Container(
          decoration: const BoxDecoration(
            color: Color(0xFFF2F3F2), 
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Checkout",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, size: 28, color: Colors.black),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              const Divider(thickness: 1),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text("Delivery", style: TextStyle(color: Color(0xff7C7C7C), fontSize: 18, fontWeight: FontWeight.w600)),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text("Select Method", style: TextStyle(color: Color(0xFF181725), fontSize: 16, fontWeight: FontWeight.bold)),
                    Icon(Icons.arrow_forward_ios, size: 18, color: Color(0xFF181725)),
                  ],
                ),
              ),
              const Divider(thickness: 1),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text("Pament", style: TextStyle(color: Color(0xff7C7C7C), fontSize: 18, fontWeight: FontWeight.w600)),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset("assets/icons/card.svg"),
                    const SizedBox(width: 10),
                    const Icon(Icons.arrow_forward_ios, size: 18, color: Color(0xFF181725)),
                  ],
                ),
              ),
              const Divider(thickness: 1),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text("Promo Code", style: TextStyle(color: Color(0xff7C7C7C), fontSize: 18, fontWeight: FontWeight.w600)),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text("Pick discount", style: TextStyle(color: Color(0xFF181725), fontSize: 16, fontWeight: FontWeight.bold)),
                    Icon(Icons.arrow_forward_ios, size: 18, color: Color(0xFF181725)),
                  ],
                ),
              ),
              const Divider(thickness: 1),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text("Total Cost", style: TextStyle(color: Color(0xff7C7C7C), fontSize: 18, fontWeight: FontWeight.w600)),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text("\$13.97", style: TextStyle(color: Color(0xFF181725), fontSize: 16, fontWeight: FontWeight.bold)),
                    Icon(Icons.arrow_forward_ios, size: 18, color: Color(0xFF181725)),
                  ],
                ),
              ),
              const Divider(thickness: 1),
              const SizedBox(height: 15),
              const Text(
                "By placing an order you agree to our Terms And Conditions",
                style: TextStyle(color: Color(0xff7C7C7C), fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 25),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderAcceptedScreen())); 
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
                  "Place Order",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        );
      },
    );
  }

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
              // 1. Bell Pepper Red
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

              // 2. Egg Chicken Red
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

              // 3. Organic Bananas
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

              // 4. Ginger
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
              InkWell(
                onTap: () {
                  showCheckoutBottomSheet(context); 
                },
                borderRadius: BorderRadius.circular(15), 
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xff53B175),
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
                          color: const Color(0xff53B175), 
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          "\$12.96",
                          style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}


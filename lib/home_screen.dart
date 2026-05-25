import 'package:flutter/material.dart';

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
            child: Column(
              children: [
                Image.asset("assets/images/Group.png", width: 28, height: 30),
                SizedBox(height: 13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.fmd_good),
                    Text(
                      "Dhaka, Banassre",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Color(0xffF2F3F2),
                    filled: true,

                    prefixIcon: Icon(Icons.search),
                    hintText: "Search Store",
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Row(
                  
                  children: [
                  Text(
                    
                       "Exclusive Offer",
                      style: TextStyle(
                     fontSize: 24,
                   fontWeight: FontWeight.w600,
                 ),
               ),
                  ],
                ),
                
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 170,
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.only(top: 20),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Color(0xffE2E2E2)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/Banana.png", width: 170),
                        SizedBox(height: 30),
                        Text(
                          "Organic Bananas",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "7pcs, Priceg",
                          style: TextStyle(color: Color(0xff7C7C7C)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "See All",
                              style: TextStyle(
                                color: Color(0xff53B175),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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

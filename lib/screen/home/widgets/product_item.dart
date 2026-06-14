


import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String imagePath;
  final String name;
  final String description;
  final String price;
  const ProductItem({super.key, required this.imagePath, required this.name,
   required this.description, required this.price});

  @override
  Widget build(BuildContext context) {
    return 
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
                        Image.asset(imagePath, width: 170),
                        SizedBox(height: 30),
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          description,
                          style: TextStyle(color: Color(0xff7C7C7C)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text( price,
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff53B175),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Color(0xff53B175),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Icon(Icons.add, color: Colors.white, size: 16),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
  }
}
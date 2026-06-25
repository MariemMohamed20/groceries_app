import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  const ExpandableText({super.key});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}
class _ExpandableTextState extends State<ExpandableText> {
  bool showDescriptionText = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Naturel Red Apple",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.favorite_border, size: 28),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "1kg, Price",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff7C7C7C),
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(Icons.remove, size: 30, color: Color(0xffB3B3B3)),
                Container(
                  width: 45,
                  height: 45,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xffE2E2E2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    "1",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(Icons.add, color: Color(0xff53B175), size: 30),
                Spacer(),
                Text(
                  "\$4.99",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(height: 40),
            InkWell(
              onTap: () {
                setState(() {
                  showDescriptionText = !showDescriptionText;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Product Details",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  Icon(showDescriptionText ? Icons.expand_less : Icons.expand_more),
                ],
              ),
            ),
            if (showDescriptionText) ...[
              SizedBox(height: 10),
              Text(
                "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healthful and varied diet.",
                style: TextStyle(color: Colors.grey[700], height: 1.5),
              ),
            ],
            SizedBox(height: 19),
            Divider(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Nutritions",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Color(0xffE2E2E2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text("100gr", style: TextStyle(fontSize: 12, color: Colors.grey[800])),
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.arrow_forward_ios, size: 18),
                  ],
                ),
              ],
            ),
            Divider(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Review",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Color(0xffF3603F), size: 20),
                    Icon(Icons.star, color: Color(0xffF3603F), size: 20),
                    Icon(Icons.star, color: Color(0xffF3603F), size: 20),
                    Icon(Icons.star, color: Color(0xffF3603F), size: 20),
                    Icon(Icons.star, color: Color(0xffF3603F), size: 20),
                    SizedBox(width: 5),
                    Icon(Icons.arrow_forward_ios, size: 18),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(
                color: Color(0xff53B175),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  "Add To Basket",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
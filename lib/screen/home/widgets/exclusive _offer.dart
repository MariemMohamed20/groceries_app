


import 'package:flutter/material.dart';
import 'package:groceries/screen/home/widgets/product_item.dart';
import 'package:groceries/screen/product_details/product_detail_screen.dart';
class ExclusiveOffer extends StatelessWidget {
  const ExclusiveOffer({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> products = [
      {
        "image": "assets/images/Banana.png",
        "name": "Organic Bananas",
        "description": "7pcs, Priceg",
        "price": r'$4.99'
      },
      {
        "image": "assets/images/apple.png",
        "name": "Red Apple",
        "description": "1kg, Priceg",
        "price": r'$4.99'
      },
      {
        "image": "assets/images/Potato.png",
        "name": "Fresh Potatoes",
        "description": "500g, Priceg",
        "price": r'$5.99'
      },
      {
        "image": "assets/images/pepper.png",
        "name": "Fresh Peppers",
        "description": "500g, Priceg",
        "price": r'$2.99'
      }
    ];
    return SizedBox(
      height: 300,
      child: ListView.separated(
        itemBuilder: (context, index)=>InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProductDetailScreen()),
            );
          },
          child: ProductItem(
            imagePath: products[index]["image"]!,
            name: products[index]["name"]!,
            description: products[index]["description"]!,
            price: products[index]["price"]!,
          ),
        ),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index)=>SizedBox(width: 20),
        itemCount: 3,
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:groceries/screen/product_details/widgets/product_header.dart';
import 'widgets/expandable_text.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ProductHeader(),
          ExpandableText()
          ],
          ),
          );
  }
}

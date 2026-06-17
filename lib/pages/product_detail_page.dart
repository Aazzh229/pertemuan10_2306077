import 'package:flutter/material.dart';
import '../models/product_model.dart';


class ProductDetailPage extends StatefulWidget {
  final ProductModel product;
  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Product")),
      body : Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.product.name,
              style: const TextStyle(fontSize: 24, fontWeight:FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text("Rp ${widget.product.price}"),
            const SizedBox(height: 10),
            Text(widget.product.description),
          ],
        ),
      ),
    );
  }
}

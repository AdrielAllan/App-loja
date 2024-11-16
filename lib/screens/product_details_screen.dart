import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  const ProductDetailsScreen({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Column(
        children: [
          Image.asset(product.image),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              product.description,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Adicionar ao carrinho
            },
            child: const Text('Adicionar ao Carrinho'),
          ),
        ],
      ),
    );
  }
}

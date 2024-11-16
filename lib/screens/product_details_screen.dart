import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  const ProductDetailsScreen({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Verificar se o tema atual é escuro
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    // Definir as cores de texto de acordo com o modo
    final textColor =
        isDarkMode ? Colors.white : Colors.black; // Cor do texto principal
    final descriptionColor =
        isDarkMode ? Colors.white : Colors.black87; // Cor da descrição

    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(product.image),
            const SizedBox(height: 16.0),
            Text(
              product.name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: textColor, // Cor do texto baseado no tema
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'R\$ ${product.price.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 18,
                color: textColor, // Cor do texto baseado no tema
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Descrição:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: textColor, // Cor do texto baseado no tema
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              product.description,
              style: TextStyle(
                fontSize: 16,
                color: descriptionColor, // Cor da descrição baseada no tema
              ),
            ),
          ],
        ),
      ),
    );
  }
}

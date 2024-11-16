class Product {
  final String id;
  final String name;
  final double price;
  final String image;
  final String description;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.description,
  });
}

List<Product> demoProducts = [
  Product(
    id: '1',
    name: 'Tênis Esportivo',
    price: 199.99,
    image: 'assets/shoe.jpg',
    description:
        'Um tênis confortável e estiloso para suas atividades esportivas.',
  ),
  Product(
    id: '2',
    name: 'Camiseta Básica',
    price: 59.99,
    image: 'assets/tshirt.jpg',
    description: 'Camiseta de algodão básica para o dia a dia.',
  ),
  Product(
    id: '3',
    name: 'Relógio Digital',
    price: 149.99,
    image: 'assets/watch.jpg',
    description: 'Relógio moderno com múltiplas funcionalidades.',
  ),
];

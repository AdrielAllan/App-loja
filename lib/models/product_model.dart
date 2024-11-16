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
    id: 'cb208187', // UUID do produto
    name: 'Produto Test',
    price: 25.50,
    image:
        'https://worldborderless.com.br/aplicativo/uploads/groups_live_products/65fb60ac1390d-6762364cc25b5b382ba6b24f67e23f66-jpg.jpg', // Foto do produto
    description: 'Camiseta disponível nos tamanhos S, M, L, XL', // Descrição
  ),
  Product(
    id: '122d4a9b', // UUID do produto
    name: 'Produto Teste 2',
    price: 1.50,
    image:
        'https://worldborderless.com.br/aplicativo/uploads/groups_live_products/65b7e10367c1b-c7557df39c09fa01cb61992e1fbe1c6d-jpg.jpg',
    description: 'Produto disponível nas cores Amarelo, Verde, Azul e Preto',
  ),
  Product(
    id: 'f22a848e', // UUID do produto
    name: 'Produto Teste 3',
    price: 2.34,
    image:
        'https://worldborderless.com.br/aplicativo/uploads/groups_live_products/660491a2b4cd5-764ef21cb92d97b849ff64dafee19d9c-jpg.jpg',
    description: 'Produto de vitamina, sem variações de cor ou tamanho.',
  ),
  Product(
    id: '5cc9dc70', // UUID do produto
    name: 'Produto Teste 4',
    price: 34.35,
    image:
        'https://worldborderless.com.br/aplicativo/uploads/groups_live_products/photo-4936070592214445648-y-7b5dd10c7210a171a9f122e07837c84f-jpg.jpg',
    description: 'Produto disponível nos tamanhos S, M, L, XL, XXL.',
  ),
  Product(
    id: 'a25f00ae', // UUID do produto
    name: 'Produto Teste 5',
    price: 41.20,
    image:
        'https://worldborderless.com.br/aplicativo/uploads/groups_live_products/photo-4936070592214445389-y-acc55e8257594dc0e7773306bbfa6d3b-jpg.jpg',
    description: 'Caneca disponível nas opções de tamanhos 35 a 40.',
  ),
  Product(
    id: '1feeb233', // UUID do produto
    name: 'Produto Teste 6',
    price: 20.30,
    image:
        'https://worldborderless.com.br/aplicativo/uploads/groups_live_products/656f6f8d4a466-1-79f668eba66baffc39239570c0ec34d9-jpg.jpg',
    description: 'Produto disponível nos tamanhos Small, Medium e Large.',
  ),
];

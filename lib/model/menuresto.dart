class Menus {
  String name;
  String kategori;
  String description;
  String bonus;
  String price;
  String imageAsset;
  List<String> imageUrls;

  Menus({
    required this.name,
    required this.kategori,
    required this.description,
    required this.bonus,
    required this.price,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var menusList = [
  Menus(
    name: 'Bakso',
    kategori: 'Makanan',
    description:
    'Bakso terbuat dari daging sapimurni, dijamin 100% HALAL. Bakso terdiri dari bakso halus, bakso urat.',
    bonus:  'Pedas lv1, Pedas lv2, Non Pedas',
    price:  'Rp.15,000',
    imageAsset: 'images/bakso.jpg',
    imageUrls: [
      'images/bakso.jpg'
    ],
  ),
  Menus(
    name: 'Bakmi Ayam',
    kategori: 'Makanan',
    description:
    'Bakmi dengan tekstur lembut dan enak, dengan taburan abon ayam dan bonus pangsit krispi',
    bonus:  'Pedas lv1, Pedas lv2, Taburan Jamur',
    price:  'Rp.20,000',
    imageAsset: 'images/bakmi.jpeg',
    imageUrls: [
      'images/bakmi.jpeg'
    ],
  ),
  Menus(
    name: 'Es Milshake',
    kategori: 'Minuman',
    description:
    'Minuman milshake dengan berbagai varian rasa, dan topping chocochips atau oreo',
    bonus:  'Coklat, Strawberry, Vanilla',
    price:  'Rp.15,000',
    imageAsset: 'images/milkshake.jpg',
    imageUrls: [
      'images/milkshake.jpg'
    ],
  ),
  Menus(
    name: 'Es Thai Tea',
    kategori: 'Minuman',
    description:
    'Minuman thai tea  yang segar',
    bonus:  'Bubble, Orea',
    price:  'Rp.15,000',
    imageAsset: 'images/thaitea.jpg',
    imageUrls: [
      'images/thaitea.jpg'
    ],
  ),
  Menus(
    name: 'Pisang Coklat',
    kategori: 'Snack',
    description:
    'Pisang goreng dengan balutan tepung krispi dan coklat yang nikmat',
    bonus:  'Varian Coklat, Keju',
    price:  'Rp.10,000',
    imageAsset: 'images/piscok.jpg',
    imageUrls: [
      'images/piscok.jpg'
    ],
  ),
  Menus(
    name: 'Kentang Goreng',
    kategori: 'Snack',
    description:
    'Kentang krispi dengan saos sambal dan mayonise yang nikmat',
    bonus:  '-',
    price:  'Rp.10,000',
    imageAsset: 'images/potato.jpg',
    imageUrls: [
      'images/potato.jpg'
    ],
  )
];
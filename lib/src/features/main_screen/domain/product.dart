class Product {
  final String name;
  final String description;
  final String price;
  final String image;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });
}

// Beispielprodukte
Product moglisCup = Product(
  name: "Mogli's Cup",
  description: "Strawberry ice cream",
  price: "A 8.99",
  image: 'assets/grafiken/cat cupcakes_3D.png',
);

Product balusCup = Product(
  name: "Balu's Cup",
  description: "Pistachio ice cream",
  price: "A 8.99",
  image: 'assets/grafiken/Ice.cream.png',
);

Product waffle = Product(
  name: "Waffle Ice",
  description: "You've got one on the waffle",
  price: "A 8.99",
  image: 'assets/grafiken/Icecream_3D.png',
);

Product stick = Product(
  name: "Ice Stick",
  description: "A sticky taste",
  price: "A 8.99",
  image: 'assets/grafiken/ice cream stick_3D.png',
);

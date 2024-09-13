import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  Product(
      {required this.title,
      required this.review,
      required this.description,
      required this.image,
      required this.price,
      required this.colors,
      required this.seller,
      required this.category,
      required this.rate,
      required this.quantity});
}

final List<Product> all = [
  Product(
    title: "Cabbage",
    description:
        "introducing the Boult Z60 Earbuds - Your true audio powerhouse! With an astounding 60 hours of playtime, these earbuds ensure your music accompanies you throughout the day, never missing a beat. Experience lag-free gaming escapades with the lowest latency of 50ms. The Lightning Boult technology offers 150 minutes of playtime with just a quick 10-minute charge, perfect for those on the go .",
    image: "assets/all/cabbage.jpeg",
    price: 50,
    seller: "Sabzi bajar",
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    category: "Vegetables",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Maize",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/all/maize ricwe.jpg",
    price: 120,
    seller: "Manoj store",
    colors: [
      Colors.brown,
      Colors.deepPurple,
      Colors.pink,
    ],
    category:"food",
    review: "(32 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Orange",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/all/orange.jpeg",
    price: 55,
    seller: "Rojina Karki",
    colors: [
      Colors.black,
      Colors.amber,
      Colors.purple,
    ],
    category: "fruits",
    review: "(20 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),


     Product(
    title: "Rice",
    description:
        "your dynamic companion. Dynamic Island ensures you stay connected, bubbling up alerts seamlessly while you're busy. Its durable design features infused glass and aerospace-grade aluminum, making it dependable and resistant to water and dust. Capture life with precision using the 48 MP Main Camera, perfect for any shot. Powered by the A16 Bionic Processor.",
    image: "assets/all/ricepackage.jpg",
    price: 55,
    seller: "hamro bazzar",
    colors: [
      Colors.black,
      Colors.amber,
      Colors.purple,
    ],
    category: "food",
    review: "(20 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),

  Product(
    title: "Watermelon",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/all/watermelon.jpeg",
    price: 155,
    seller: "Zidan store",
    colors: [
      Colors.blueAccent,
      Colors.orange,
      Colors.green,
    ],
    category: "food",
    review: "(20 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
   Product(
    title: "Wheat",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/all/wheat.jpg",
    price: 1000,
    seller: "manoj store",
    colors: [
      Colors.lightBlue,
      Colors.orange,
      Colors.purple,
    ],
    category: "food",
    review: "(100 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
];

final List<Product> fruits = [
  Product(
    title:"Apple",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/fruits/apple.jpg",
    price: 255,
    seller: "Fruit shop",
    colors: [
      Colors.grey,
      Colors.amber,
      Colors.purple,
    ],
    category: "fruits",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Banana",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/fruits/banana.jpg",
    price: 300,
    seller: "Fruit shop",
    colors: [
      Colors.blueAccent,
      Colors.blueGrey,
      Colors.green,
    ],
    category: "fruits",
    review: "(200 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Grapes",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/fruits/grapes.jpg",
    price: 500,
    seller: "Fruit shop",
    colors: [
      Colors.red,
      Colors.orange,
      Colors.greenAccent,
    ],
    category: "fruits",
    review: "(100 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Orange",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/fruits/orange.jpeg",
    price: 155,
    seller: "Manoj store",
    colors: [
      Colors.deepPurpleAccent,
      Colors.orange,
      Colors.green,
    ],
    category: "fruits",
    review: "(60 Reviews)",
    rate: 3.0,
    quantity: 1,
  ),
  Product(
    title: "Pomegrantes",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/fruits/pomegrantes.jpg",
    price: 1000,
    seller: "Manoj store",
    colors: [
      Colors.blueAccent,
      Colors.orange,
      Colors.green,
    ],
    category: "fruits",
    review: "(60 Reviews)",
    rate: 0.0,
    quantity: 1,
  ),


   Product(
    title: "WaterMelon",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/fruits/watermelon.jpeg",
    price: 255,
    seller: "Rojina store",
    colors: [
      Colors.grey,
      Colors.amber,
      Colors.purple,
    ],
    category: "fruits",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  
];

final List<Product> vegetables = [
  
  Product(
    title: "Carrot",
    description:
        "Sit back and relax while listening to your favourite tracks for long hours with this Bluetooth headset from boAt. The elegant design of this headset makes it easier for you to use it as you just have to tap the controls on the ear cup to change tracks, adjust the volume, and answer calls..",
    image: "assets/vegetables/carrot.jpg",
    price: 299,
    seller: " meroo Store",
    colors: [
      Colors.grey,
      Colors.black54,
      Colors.purple,
    ],
    category: "Vegetables",
    review: "(25 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "CauliFlower",
    description:
        "AirPods Max reimagine over-ear headphones. An Apple designed dynamic driver provides immersive high fidelity audio. Every detail, from canopy to cushions, has been designed for an exceptional fit. Industry leading Active Noise Cancellation blocks outside noise, while Transparency mode lets it in. And spatial audio with dynamic head tracking provides theatre like sound that surrounds you.",
    image: "assets/vegetables/caulai.jpg",
    price: 666,
    seller: "manoj store",
    colors: [
      Colors.black,
      Colors.orange,
      Colors.green,
    ],
    category: "Vegetables",
    review: "(100 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "Spinach",
    description:
        "AirPods Max reimagine over-ear headphones. An Apple designed dynamic driver provides immersive high fidelity audio. Every detail, from canopy to cushions, has been designed for an exceptional fit. Industry leading Active Noise Cancellation blocks outside noise, while Transparency mode lets it in. And spatial audio with dynamic head tracking provides theatre like sound that surrounds you.",
    image: "assets/vegetables/spinach.jpg",
    price: 155,
    seller: "mero Store",
    colors: [
      Colors.blueAccent,
      Colors.redAccent,
      Colors.deepOrangeAccent,
    ],
    category: "Vegetables",
    review: "(20 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Tomato",
    description:
        "The Sony Bluetooth Headphone is designed to elevate your music experience with its ULT Power Sound feature. You can choose to enhance the bass at your convenience based on your mood by clicking on the ULT button. With the elite noise cancellation and dual noise sensor tech, it provides an immersive audio experience.",
    image: "assets/vegetables/tomato.jpg",
    price: 155,
    seller: "Manoj store",
    colors: [
      Colors.lightGreen,
      Colors.blueGrey,
      Colors.deepPurple,
    ],
    category: "Vegetables",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),


  Product(
    title: "Vegetable",
    description:
        "Perfect for shooting games like PFS, Destiny 2, Tom Clancy s Ghost Recon or Fortnite Multi-platform Compatible 7.1 surround sound gaming headsets works on PS4/ PS4 Pro/ Xbox One S/ Xboe One/ PC/ Mac/ Nintendo Switch/ PSP/ Laptop/ Smartphones and other devices with standard 3.5mm audio jack and USB interfaces.",
    image: "assets/vegetables/vegetable item.jpg",
    price: 666,
    seller: "Manoj store",
    colors: [
      Colors.black,
      Colors.orange,
      Colors.green,
    ],
    category: "Vegetables",
    review: "(100 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),
];


final List<Product> snacks = [
  
  Product(
    title: " Current",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/snacks/current.png",
    price: 299,
    seller: "Ashok store",
    colors: [
      Colors.grey,
      Colors.black54,
      Colors.purple,
    ],
    category: "Snacks",
    review: "(25 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Kurkure",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/snacks/kurkure.jpg",
    price: 666,
    seller: "Manoj store",
    colors: [
      Colors.black,
      Colors.orange,
      Colors.green,
    ],
    category: "Snacks",
    review: "(100 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "Lays",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/snacks/lays.png",
    price: 155,
    seller: "Ashok store",
    colors: [
      Colors.blueAccent,
      Colors.redAccent,
      Colors.deepOrangeAccent,
    ],
    category: "Snacks",
    review: "(20 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: " PopCorn",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/snacks/popcone.png",
    price: 155,
    seller: "Madhu store",
    colors: [
      Colors.lightGreen,
      Colors.blueGrey,
      Colors.deepPurple,
    ],
    category: "Snacks",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),

];


final List<Product> beverages = [
  
  Product(
    title: " Coke",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/beverages/coke.jpg",
    price: 500,
    seller: "Manoj store",
    colors: [
      Colors.grey,
      Colors.black54,
      Colors.purple,
    ],
    category: "Beverages",
    review: "(25 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Mountain Dew",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/beverages/dew.jpg",
    price: 1000,
    seller: "Cold store",
    colors: [
      Colors.black,
      Colors.orange,
      Colors.green,
    ],
    category: "Beverages",
    review: "(100 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "Golden Oak",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/beverages/golden oak.jpg",
    price: 400,
    seller: "Madhu store",
    colors: [
      Colors.blueAccent,
      Colors.redAccent,
      Colors.deepOrangeAccent,
    ],
    category: "Beverages",
    review: "(20 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: " Gorkha Strong",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/beverages/gorkha.png",
    price: 800,
    seller: "Rozinaa store",
    colors: [
      Colors.lightGreen,
      Colors.blueGrey,
      Colors.deepPurple,
    ],
    category: "Beverages",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Hard drink",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/beverages/hard drink.png",
    price: 2000,
    seller: "Manoj store",
    colors: [
      Colors.grey,
      Colors.black54,
      Colors.purple,
    ],
    category: "Beverages",
    review: "(25 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Sprite",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/beverages/sprite.jpg",
    price: 4000,
    seller: "our store",
    colors: [
      Colors.black,
      Colors.orange,
      Colors.green,
    ],
    category: "Beverages",
    review: "(100 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "Tuborg",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/beverages/tuborge.jpg",
    price: 1800,
    seller: "Ashok Liquors",
    colors: [
      Colors.blueAccent,
      Colors.redAccent,
      Colors.deepOrangeAccent,
    ],
    category: "Beverages",
    review: "(20 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
];
final List<Product> babycare = [

Product(
    title: "Diapers",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/babycare/dyper.jpg",
    price: 3000,
    seller: "Sumi store",
    colors: [
      Colors.amber,
      Colors.deepPurple,
      Colors.pink,
    ],
    category: "Beverages",
    review: "(320 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Formula",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/babycare/formula1.jpg",
    price: 300,
    seller: "Babies store",
    colors: [
      Colors.pink,
      Colors.orange,
      Colors.redAccent,
    ],
    category: "Beverages",
    review: "(100 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
   Product(
    title: "Johnson",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/babycare/johnssion.jpg",
    price: 155,
    seller: " Seller",
    colors: [
      Colors.brown,
      Colors.purpleAccent,
      Colors.blueGrey,
    ],
    category: "Beverages",
    review: "(80 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
   Product(
    title: "Baby Wipes",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/babycare/waips.jpg",
    price: 5000,
    seller: "Behind Store",
    colors: [
      Colors.blueAccent,
      Colors.orange,
      Colors.green,
    ],
    category: "Beverages",
    review: "(22 Reviews)",
    rate: 3.5,
    quantity: 1,
  ),
];
final List<Product> food = [
  
  Product(
    title: "Dawaat",
    description:
        "A men's dress typically refers to formal or semi-formal attire, such as a suit or dress shirt and trousers combination. Suits are often composed of a matching jacket and pants, crafted from high-quality materials like wool or linen. Dress shirts, available in various colors and patterns, are usually paired with ties or bow ties.",
    image: "assets/food/daaawat.png",
    price: 500,
    seller: "MY Store",
    colors: [
      Colors.brown,
      Colors.orange,
      Colors.blueGrey,
    ],
    category:"food",
    review: "(90 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
   Product(
    title: "Maize",
    description:
        "A men's dress typically refers to formal or semi-formal attire, such as a suit or dress shirt and trousers combination. Suits are often composed of a matching jacket and pants, crafted from high-quality materials like wool or linen. Dress shirts, available in various colors and patterns, are usually paired with ties or bow ties.",
    image: "assets/food/maize.png",
    price: 400,
    seller: "Baba Store",
    colors: [
      Colors.black54,
      Colors.orange,
      Colors.green,
    ],
    category: "food",
    review: "(500 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Newari",
    description:
        "A men's dress typically refers to formal or semi-formal attire, such as a suit or dress shirt and trousers combination. Suits are often composed of a matching jacket and pants, crafted from high-quality materials like wool or linen. Dress shirts, available in various colors and patterns, are usually paired with ties or bow ties.",
    image: "assets/food/newari.jpg",
    price: 300,
    seller: "Manoj Store",
    colors: [
      Colors.pink,
      Colors.amber,
      Colors.green,
    ],
    category: "food",
    review: "(200 Reviews)",
    rate: 3.0,
    quantity: 1,
  ),
   Product(
    title: "Rice",
    description:
        "A men's dress typically refers to formal or semi-formal attire, such as a suit or dress shirt and trousers combination. Suits are often composed of a matching jacket and pants, crafted from high-quality materials like wool or linen. Dress shirts, available in various colors and patterns, are usually paired with ties or bow ties..",
    image: "assets/food/Rice-Free.png",
    price: 200,
    seller: "Hot Store",
    colors: [
      Colors.brown,
      Colors.orange,
      Colors.blue,
    ],
    category: "food",
    review: "(1k Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
   Product(
    title: "Wheat",
    description:
        "A men's dress typically refers to formal or semi-formal attire, such as a suit or dress shirt and trousers combination. Suits are often composed of a matching jacket and pants, crafted from high-quality materials like wool or linen. Dress shirts, available in various colors and patterns, are usually paired with ties or bow ties..",
    image: "assets/food/wheat.jpg",
    price: 1000,
    seller: "Nabin store",
    colors: [
      Colors.lightBlue,
      Colors.orange,
      Colors.purple,
    ],
    category: "food",
    review: "(100 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),

];

final List<Product> chocolatesitems = [
  
  Product(
    title: "Bounty",
    description:
        " Its durable design features infused glass and aerospace-grade aluminum, making it dependable and resistant to water and dust. Capture life with precision using the 48 MP Main Camera, perfect for any shot. Powered by the A16 Bionic Processor, it excels in computational photography and more, all while conserving battery life..",
    image: "assets/chocolates/bounti.png",
    price: 500,
    seller: " Bount Store",
    colors: [
      Colors.brown,
      Colors.orange,
      Colors.blueGrey,
    ],
    category:"chocolatesitem",
    review: "(90 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
   Product(
    title: "Chocolate",
    description:
        " Its durable design features infused glass and aerospace-grade aluminum, making it dependable and resistant to water and dust. Capture life with precision using the 48 MP Main Camera, perfect for any shot. Powered by the A16 Bionic Processor, it excels in computational photography and more, all while conserving battery life..",
    image: "assets/chocolates/chocolate.jpg",
    price: 400,
    seller: "Chhoco Store",
    colors: [
      Colors.black54,
      Colors.orange,
      Colors.green,
    ],
    category: "chocolatesitem",
    review: "(500 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Dairy Milk",
    description:
        " Its durable design features infused glass and aerospace-grade aluminum, making it dependable and resistant to water and dust. Capture life with precision using the 48 MP Main Camera, perfect for any shot. Powered by the A16 Bionic Processor, it excels in computational photography and more, all while conserving battery life..",
    image: "assets/chocolates/dairymilk.jpg",
    price: 300,
    seller: "Dairy Store",
    colors: [
      Colors.pink,
      Colors.amber,
      Colors.green,
    ],
    category: "chocolatesitem",
    review: "(200 Reviews)",
    rate: 3.0,
    quantity: 1,
  ),
   Product(
    title: "KitKat",
    description:
       " Its durable design features infused glass and aerospace-grade aluminum, making it dependable and resistant to water and dust. Capture life with precision using the 48 MP Main Camera, perfect for any shot. Powered by the A16 Bionic Processor, it excels in computational photography and more, all while conserving battery life..",
    image: "assets/chocolates/kitkat.jpg",
    price: 200,
    seller: "Choco Store",
    colors: [
      Colors.brown,
      Colors.orange,
      Colors.blue,
    ],
    category: "chocolatesitem",
    review: "(1k Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
   Product(
    title: "Snickers",
    description:
      " Its durable design features infused glass and aerospace-grade aluminum, making it dependable and resistant to water and dust. Capture life with precision using the 48 MP Main Camera, perfect for any shot. Powered by the A16 Bionic Processor, it excels in computational photography and more, all while conserving battery life..",
    image: "assets/chocolates/snakers.png",
    price: 1000,
    seller: "Choco Store",
    colors: [
      Colors.lightBlue,
      Colors.orange,
      Colors.purple,
    ],
    category: "chocolatesitem",
    review: "(100 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),




];


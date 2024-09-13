class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categoriesList = [
  Category(
    title: "All",
    image: "images/all.jpg",
  ),
  Category(
    title: "fruits",
    image: "assets/fruits/apple.jpg",
  ),

    Category(
    title: "vegetables",
    image: "assets/vegetables/vegetable item.jpg",
  ),
    Category(
    title: "snacks",
    image: "assets/snacks/popcone.png",
  ),

  Category(
    title: "beverages",
    image: "assets/beverages/golden oak.jpg",
  ),
  Category(
    title: "baby Care",
    image: "assets/babycare/formula1.jpg",
  ),
  Category(
    title: "food",
    image: "assets/food/Rice-Free.png",
  ),

   Category(
    title: "chocolates Items",
    image: "assets/chocolates/chocolate.jpg",
  ),
];

class OnBoardingEntity {
  final String title;
  final String description;
  final String image;

  OnBoardingEntity({
    required this.title,
    required this.description,
    required this.image,
  });

  static List<OnBoardingEntity> onBoardingData = [
    OnBoardingEntity(
        title: "Order Your Wish",
        description: "You can order everything,\nyou love to eat.",
        image: "photo1.png"),
    OnBoardingEntity(
        title: "Hot and Spicy",
        description: "Order hot and spicy,\nFOOD with happiness.",
        image: "photo2.png"),
    OnBoardingEntity(
        title: "Happy Cookies",
        description: "Order BEST Cookies,\nand Enjoy.",
        image: "photo3.png"),
    OnBoardingEntity(
        title: "Happy Bike",
        description: "Order BEST Cookies,\nand Enjoy.",
        image: "bike.png"),
    OnBoardingEntity(
        title: "Grapics wow",
        description: "Order BEST Cookies,\nand Enjoy.",
        image: "graph.png"),
    OnBoardingEntity(
        title: "Personal training Cookies",
        description: "Order BEST Cookies,\nand Enjoy.",
        image: "personal training.png"),
    OnBoardingEntity(
        title: "Happy React",
        description: "Order BEST Cookies,\nand Enjoy.",
        image: "react.png"),
    OnBoardingEntity(
        title: "Speed test Cookies",
        description: "Order BEST Cookies,\nand Enjoy.",
        image: "speed test.png"),
    OnBoardingEntity(
        title: "Stripe  payment ",
        description: "Order BEST Cookies,\nand Enjoy.",
        image: "stripe payement.png"),
  ];
}

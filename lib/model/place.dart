class PlaceModel {
  String name;
  String image;
  String location;
  String description;
  String day;
  String time;
  List<String>? imageUrl;

  PlaceModel({
    required this.name,
    required this.description,
    required this.location,
    required this.image,
    this.imageUrl,
    required this.day,
    required this.time
  });
}

var placeModel = [
  PlaceModel(
      name: "Jangkar Coffee",
      description: "Merupakan kedai kopi yang baru saja dibuka. Kopi murni racikan dan juga mempunyai ciri khas aroma kopi yang wangi.",
      location: "Teratai, Mojokerto",
      image: "assets/images/kedai.jpg",
      imageUrl: ["assets/images/kedai.jpg", "assets/images/warkop.jpg"],
      day: "Senin - Minggu",
      time: "09.00 AM - 12.00 PM"
  ),
  PlaceModel(
      name: "Olive Coffee",
      description: "Merupakan warung kopi yang mempunyai ciri khas tersendiri.",
      location: "BanjarAgung, Mojokerto",
      image: "assets/images/warkop.jpg",
      imageUrl: ["assets/images/kedai.jpg", "assets/images/warkop.jpg"],
      day: 'Senin - Minggu',
      time: '24 Jam'
  )
];

import 'package:dicoding/model/place.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'detail_image.dart';

class Tourist extends StatefulWidget {
  Tourist({super.key});

  @override
  State<Tourist> createState() => _TouristState();
}

class _TouristState extends State<Tourist> {
  //
  // List<Map<String, dynamic>> coffeeShop = [
  //   {
  //     "id": 1,
  //     "name" : "Jangkar Coffee",
  //     "image": "assets/images/kedai.jpg",
  //     "location": "Teratai, Mojokerto",
  //     "description": "Merupakan kedai kopi yang baru saja dibuka.",
  //     "day": "Setiap hari",
  //     "time": "09.00 AM - 12.00 PM",
  //     "price": "Rp15.000 - Rp20.000"
  //   },
  //   {
  //     "id": 2,
  //     "name" : "Olive Coffee",
  //     "image": "assets/images/warkop.jpg",
  //     "location": "BanjarAgung, Mojokerto",
  //     "description": "Merupakan warung kopi yang mempunyai ciri khas tersendiri.",
  //     "day": "Setiap hari",
  //     "time": "00.00 AM - 12.00 PM",
  //     "price": "Rp5.000 - Rp15.000"
  //   }
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Coffee Shop', style: GoogleFonts.poppins(
          fontSize: 15,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: placeModel.length,
                  itemBuilder: (context, index) {
                  final PlaceModel item = placeModel[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailImage(id: item,)),
                          );
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: 100,
                                height: 50,
                                child: Image.asset(item.image, fit: BoxFit.cover,)),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(item.name),
                                  Text(item.location),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

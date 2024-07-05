import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shipshop/Widgets/product_details_popup.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});
  List<String> images = [
    "asset/images/image1.jpg",
    "asset/images/image2.jpg",
    "asset/images/image3.jpg",
    "asset/images/image4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Overview",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
        leading: const BackButton(
          color: Colors.black87,
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black87,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                // color: Colors.red,
                height: 520,
                width: MediaQuery.of(context).size.width,
                child: FanCarouselImageSlider.sliderType1(
                  sliderHeight: 500,
                  autoPlay: true,
                  imagesLink: images,
                  isAssets: true,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Warm Zipper",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "Hooded Jacket",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Text(
                      "\$300.00",
                      style: TextStyle(
                        color: Color(0xFFFF3022),
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 25,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Cool,windy weather is on its way. Send him out\nthe door in a jacket. he wants to wear. Warm\nZooper Hooded Jacket. ",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color(0x1F989797),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.shopping_cart,
                        color: Color(0xFFFF3022),
                      ),
                    ),
                  ),
                  ProductDetailsPopup(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

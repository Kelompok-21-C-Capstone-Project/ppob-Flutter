import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Promo extends StatelessWidget {
  const Promo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Promo",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Container(
            margin: EdgeInsets.all(15),
            child: CarouselSlider.builder(
              itemCount: 4,
              itemBuilder: (context, index, id) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.white),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        "",
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                enlargeCenterPage: true,
                height: 200,
                autoPlay: false,
                autoPlayInterval: Duration(seconds: 3),
                reverse: false,
                aspectRatio: 5.0,
              ),
            )),
      ],
    );
  }
}

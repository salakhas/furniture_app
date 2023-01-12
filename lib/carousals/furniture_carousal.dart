import 'package:flutter/material.dart';
import 'package:furniture_app/furniture_screen/furniture_screen.dart';
import 'package:furniture_app/model/furniture_model.dart';

class FurnitureCarousal extends StatefulWidget {
  const FurnitureCarousal({super.key});

  @override
  State<FurnitureCarousal> createState() => _FurnitureCarousalState();
}

class _FurnitureCarousalState extends State<FurnitureCarousal> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        itemCount: furnitures.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          Furniture furniture = furnitures[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FurnitureScreen(
                    furniture: furniture,
                  ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 200,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(228, 229, 231, 1),
                ),
                child: Stack(
                  children: [
                    Positioned(
                        left: 10,
                        right: 10,
                        top: 10,
                        bottom: 10,
                        child: Container(
                          color: Colors.white,
                          child: Hero(
                            tag: furniture.imageUrl,
                            child: Image.asset(
                              furniture.imageUrl,
                              fit: BoxFit.contain,
                            ),
                          ),
                        )),
                    Positioned(
                        top: 15,
                        right: 15,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(6, 1, 6, 3),
                          color: const Color.fromRGBO(228, 229, 231, 1),
                          child: Text(
                            '⭐ ${furniture.rating}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),
                    Positioned(
                        bottom: 50,
                        left: 20,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          color: const Color.fromRGBO(244, 193, 89, 1),
                          child: Text(
                            '\$${furniture.price}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),
                    Positioned(
                        bottom: 17,
                        left: 20,
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 7),
                          color: Colors.black,
                          child: Text(
                            furniture.name,
                            style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 11),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

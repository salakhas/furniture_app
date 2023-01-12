import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furniture_app/model/furniture_model.dart';

class FurnitureScreen extends StatefulWidget {
  final Furniture furniture;
  const FurnitureScreen({super.key, required this.furniture});

  @override
  State<FurnitureScreen> createState() => _FurnitureScreenState();
}

class _FurnitureScreenState extends State<FurnitureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(228, 229, 231, 1),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Hero(
                  tag: widget.furniture.imageUrl,
                  child: Image(
                    width: double.infinity,
                    image: AssetImage(widget.furniture.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 20,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  iconSize: 30.0,
                  color: Colors.black,
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              Positioned(
                  top: 30,
                  right: 15,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(6, 1, 6, 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: const Color.fromRGBO(228, 229, 231, 1),
                    ),
                    child: Text(
                      '⭐ ${widget.furniture.rating}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
              Positioned(
                  bottom: 64,
                  left: 20,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    color: const Color.fromRGBO(244, 193, 89, 1),
                    child: Text(
                      '\$${widget.furniture.price}',
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  )),
              Positioned(
                  bottom: 17,
                  left: 20,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 7),
                    color: Colors.black,
                    child: Text(
                      widget.furniture.name,
                      style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22),
                    ),
                  ))
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Row(
            children: [
              Container(
                height: 46,
                color: Colors.white,
                padding: const EdgeInsets.all(8),
                child: const Icon(FontAwesomeIcons.heart),
              ),
              const SizedBox(
                width: 25,
              ),
              Expanded(
                child: InkWell(
                  splashColor: Colors.white,
                  splashFactory: InkSplash.splashFactory,
                  onTap: () {},
                  child: Container(
                    height: 46,
                    color: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8.5),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Add to cart',
                        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

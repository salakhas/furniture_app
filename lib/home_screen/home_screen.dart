import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furniture_app/carousals/button_carousal.dart';
import 'package:furniture_app/carousals/furniture_carousal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 15, left: 7, right: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Welcome Back!',
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Salakha',
                      style: TextStyle(color: Color.fromARGB(255, 73, 73, 73), fontSize: 14),
                    ),
                  ],
                ),
                InkWell(
                    onTap: () {},
                    child: const CircleAvatar(
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage('assets/images/avatar.png'),
                    ))
              ],
            ),
          ),
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            children: [
              const SizedBox(
                height: 42,
              ),
              Container(
                width: double.infinity,
                height: 148,
                decoration: const BoxDecoration(color: Color.fromARGB(255, 245, 247, 249)),
                child: Stack(
                  children: [
                    Positioned(
                        right: 0,
                        bottom: 0,
                        top: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.asset(
                            'assets/images/bookshelfWall.png',
                            height: 200,
                          ),
                        )),
                    Positioned(
                      left: 20,
                      top: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.arrow_right,
                              size: 35,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: const [
                              Text(
                                'Custom Now',
                                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                ' *',
                                style: TextStyle(fontSize: 22, color: Colors.red, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const Text(
                            'Discount 50% for\nthe first transaction',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                            maxLines: 3,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const ButtonCarousal(),
              const SizedBox(
                height: 40,
              ),
              const FurnitureCarousal(),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: ''),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.heart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ],
      ),
    );
  }
}

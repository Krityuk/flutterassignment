// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutterassignmentkrityuk/provider.dart';
import 'package:provider/provider.dart';

import 'MyWidget.dart';
import 'TileModel.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    final ProductsList = Provider.of<Products>(context).items;

    return SingleChildScrollView(
        child: Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.grey,
                ),
                onPressed: () {
                  // onPressed for menu IconButton
                },
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.chat,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      // onPressed for chat IconButton
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.notifications_outlined,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      // onPressed for alarm IconButton
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: screenWidth,
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hello, Priya!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Times New Roman',
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'What do you wanna learn today?',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MyWidget(Icons.book, 'Programs'),
                  MyWidget(Icons.help, 'Get help'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MyWidget(Icons.menu_book_outlined, 'Learn'),
                  MyWidget(Icons.check_box_outline_blank, 'DD Tracker'),
                ],
              ),
            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Programs for you',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Times New Roman',
                      ),
                    ),
                    Text(
                      'View all ➔',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              //************ */
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                height: screenHeight * 0.45,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: ProductsList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: screenHeight * 0.45,
                      width: screenWidth * 0.7,
                      margin: const EdgeInsets.only(
                        top: 10,
                        right: 20,
                        bottom: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey.withOpacity(0.2)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.02),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                            // Offset in the bottom-right direction
                          ),
                        ],
                      ),
                      child: ProductTile(
                        product1: ProductsList[0],
                        // product1: ProductsList[index], likha tha pehle
                      ),
                    );
                  },
                ),
              ),

              //********************************************* */
              Padding(
                padding: const EdgeInsets.all(14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Events and experiences',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      'View all ➔',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                height: screenHeight * 0.45,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: ProductsList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: screenHeight * 0.45,
                      width: screenWidth * 0.7,
                      margin: const EdgeInsets.only(
                        top: 10,
                        right: 20,
                        bottom: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black),
                      ),
                      child: ProductTile(
                        product1: ProductsList[1],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Lessons for you',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text('View all ➔')
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                height: screenHeight * 0.45,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: ProductsList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: screenHeight * 0.45,
                      width: screenWidth * 0.7,
                      margin: const EdgeInsets.only(
                        top: 10,
                        right: 20,
                        bottom: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black),
                      ),
                      child: ProductTile(
                        product1: ProductsList[2],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Page 2'),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Page 3'),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Page 4'),
    );
  }
}

class Page5 extends StatelessWidget {
  const Page5({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Page 5'),
    );
  }
}

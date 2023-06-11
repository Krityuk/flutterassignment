import 'package:flutter/material.dart';

import 'models/Product.dart';

class ProductTile extends StatelessWidget {
  final Product product1;

  const ProductTile({Key? key, required this.product1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => page2(product1: product1),
        //   ),
        // );
      },
      child: ClipRRect(
        // clipprect se wrap kr do to give rectangle circular shape to any container
        borderRadius: BorderRadius.circular(15),
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.20,
              width: screenWidth * 0.7,
              child: Image.asset(
                product1.imageUrl,
                fit: BoxFit.fill,
                alignment: Alignment.topCenter,
              ),
            ),
            Container(
              // decoration: const BoxDecoration(color: Colors.blue),
              height: screenHeight * 0.20,
              width: screenWidth * 0.7,
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product1.title,
                    style: const TextStyle(color: Colors.blue, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    product1.description,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product1.X,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      if (product1.Y == 2)
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            foregroundColor: Colors.blue,
                            backgroundColor: Colors.white,
                            side: const BorderSide(color: Colors.blue),
                          ),
                          child: const Text(' Book '),
                        ),
                      if (product1.Y == 3)
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.lock_outlined))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:furniture_app/screens/detailsscreen.dart';
import 'package:furniture_app/utils/circles.dart';
import 'package:icons_plus/icons_plus.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _collections = [
    "Assets/images/c1.jpeg",
    "Assets/images/c2.jpeg",
    "Assets/images/c3.jpeg",
    "Assets/images/c4.jpeg",
    "Assets/images/c5.jpeg",
    "Assets/images/c6.jpeg",
  ];
  final List _collectionss = [
    "Men",
    "Women",
    "Kids",
    "Accessories",
    "Sneakers",
    "Perfumes",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(physics:const  BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(56),
                      child: Container(
                        height: 55,
                        width: 55,
                        color: Colors.blue,
                        child: Image.asset(
                          "Assets/images/av1.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: const Icon(
                        Icons.shopping_cart_checkout_outlined,
                        color: Colors.black,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  "Hi Stacy",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  "Select and buy clothes from over 1000 products from your favorite brands",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextField(
                  cursorColor: Colors.black,
                  style: const TextStyle(color: Colors.black54),
                  decoration: InputDecoration(
                    hintText: "Search",
                    filled: true,
                    fillColor: const Color.fromARGB(26, 35, 35, 35),
                    suffixIcon: const Icon(
                      HeroIcons.bars_4,
                      color: Colors.black54,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Collections",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      HeroIcons.ellipsis_horizontal,
                      size: 55,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 150,
                  child: ListView.builder( physics:const  BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: _collections.length,
                    itemBuilder: (context, index) {
                      return MyCircles(
                        labelText: _collectionss[index % _collectionss.length],
                        imagePath: _collections[index % _collections.length],
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "New In",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailsPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "View All",
                        style: TextStyle(fontSize: 19),
                      ),
                    )
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const DetailsPage(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 300,
                                  width: 200,
                                  color: Colors.blue,
                                  child: Image.asset(
                                    "Assets/images/N1.jpeg",
                                    alignment: Alignment.topCenter,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              "Regular Fit T-Shirt",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                            const Text(
                              "\$60",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                height: 300,
                                width: 200,
                                color: Colors.blue,
                                child: Image.asset(
                                  "Assets/images/N2.jpeg",
                                  alignment: Alignment.topCenter,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Text(
                              "Slim Fit T-Shirt ",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                            const Text(
                              "\$60",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

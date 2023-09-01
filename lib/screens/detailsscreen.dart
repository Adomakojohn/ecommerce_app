import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:furniture_app/screens/homescreen.dart';
import 'package:icons_plus/icons_plus.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: const Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.black,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                    ),
                    const Text(
                      " Product Details",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      height: 500,
                      width: 450,
                      color: Colors.red,
                      child: Image.asset(
                        "Assets/images/N1.jpeg",
                        alignment: Alignment.topCenter,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const Icon(
                  HeroIcons.ellipsis_horizontal,
                  size: 40,
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Regular Fit T-Shirt",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "\$60",
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          height: 80,
                          width: 80,
                          color: Colors.white54,
                          child: const Center(
                              child: Text(
                            "XXS",
                            style: TextStyle(
                                color: Colors.indigoAccent, fontSize: 30),
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          height: 80,
                          width: 80,
                          color: Colors.white10,
                          child: const Center(
                              child: Text(
                            "M",
                            style: TextStyle(
                                color: Colors.indigoAccent, fontSize: 30),
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          height: 80,
                          width: 80,
                          color: Colors.white10,
                          child: const Center(
                              child: Text(
                            "XL",
                            style: TextStyle(
                              color: Colors.indigoAccent,
                              fontSize: 30,
                            ),
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          height: 80,
                          width: 80,
                          color: Colors.white,
                          child: const Center(
                              child: Text(
                            "XL",
                            style: TextStyle(
                                color: Colors.indigoAccent, fontSize: 30),
                          )),
                        ),
                      ),
                    )
                  ],
                ),
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        height: 85,
        width: 380,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton( backgroundColor: Colors.black,
            onPressed: () {
              // Button action
            },
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(20), // Adjust the value as needed
            ),
            child: const Text("Add  to cart"  , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w400),),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

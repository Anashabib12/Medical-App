import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:medical_app/components/custom_categories.dart';
import 'package:medical_app/components/custom_product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
          backgroundColor: const Color(0xFFF7FBFF),
          height: 80,
          elevation: 0,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile')
          ]),
      backgroundColor: const Color(0xFFF7FBFF),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: constraints.maxHeight * 0.35,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xFF4157FF).withOpacity(0.8),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(33),
                            bottomRight: Radius.circular(33))),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: constraints.maxWidth * 0.06,
                        right: constraints.maxWidth * 0.04,
                        top: constraints.maxHeight * 0.08,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('assets/logo/anas.png'),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                    Icons.notifications_none_rounded),
                                color: Colors.white,
                                iconSize: constraints.maxWidth * 0.07,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.shopping_bag_outlined),
                                color: Colors.white,
                                iconSize: constraints.maxWidth * 0.07,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: constraints.maxHeight * 0.025,
                          ),
                          Text(
                            'Hi, Anas',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: constraints.maxWidth * 0.062),
                          ),
                          Text(
                            'Welcome to Quick Medical Store',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: constraints.maxWidth * 0.041),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: constraints.maxHeight * 0.31,
                    left: constraints.maxWidth * 0.06,
                    right: constraints.maxWidth * 0.06,
                    child: Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color:
                                Colors.grey.withOpacity(0.13), // Shadow color
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: const Offset(0, 8)),
                      ]),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Search Medicine & Healthcare products',
                          hintStyle: TextStyle(
                              color: const Color(0xFF090F47).withOpacity(0.4),
                              fontSize: constraints.maxWidth * 0.036,
                              fontWeight: FontWeight.w400),
                          prefixIcon: Icon(
                            Icons.search,
                            color: const Color(0xFF090F47).withOpacity(0.4),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: constraints.maxWidth * 0.06,
                              vertical: constraints.maxHeight * 0.025),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: constraints.maxHeight * 0.075,
                  left: constraints.maxWidth * 0.06,
                ),
                child: Text(
                  'Top Categories',
                  style: TextStyle(
                      color: const Color(0xFF090F47),
                      fontWeight: FontWeight.w600,
                      fontSize: constraints.maxWidth * 0.05),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: constraints.maxHeight * 0.018,
                  left: constraints.maxWidth * 0.02,
                  right: constraints.maxWidth * 0.02,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomCategories(
                        constraints: constraints,
                        text: 'Dental',
                        color1: const Color(0xffFF9598),
                        color2: const Color(0xffFF70A7)),
                    CustomCategories(
                        constraints: constraints,
                        text: 'Wellness',
                        color1: const Color(0xff19E5A5),
                        color2: const Color(0xff15BD92)),
                    CustomCategories(
                        constraints: constraints,
                        text: 'Homeo',
                        color1: const Color(0xffFFC06F),
                        color2: const Color(0xffFF793A)),
                    CustomCategories(
                        constraints: constraints,
                        text: 'Eye Care',
                        color1: const Color(0xff4DB7FF),
                        color2: const Color(0xff3E7DFF))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: constraints.maxHeight * 0.03,
                  left: constraints.maxWidth * 0.06,
                  right: constraints.maxWidth * 0.06,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: constraints.maxHeight * 0.26,
                    width: constraints.maxWidth * 0.9,
                    decoration: BoxDecoration(
                        // color: const Color(0xFF090F47),
                        borderRadius: BorderRadius.circular(15)),
                    child: Image.asset(
                      'assets/Banners/home_offer_image_section.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: constraints.maxHeight * 0.03,
                  left: constraints.maxWidth * 0.06,
                  right: constraints.maxWidth * 0.06,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Deals of the Day',
                      style: TextStyle(
                          color: const Color(0xFF090F47),
                          fontWeight: FontWeight.w600,
                          fontSize: constraints.maxWidth * 0.05),
                    ),
                    Text(
                      'More',
                      style: TextStyle(
                          color: const Color(0xFF006AFF),
                          fontWeight: FontWeight.w400,
                          fontSize: constraints.maxWidth * 0.04),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.02,
              ),
              CustomProduct(constraints: constraints),
              SizedBox(
                height: constraints.maxHeight * 0.02,
              ),
              CustomProduct(constraints: constraints),
              SizedBox(
                height: 100,
              )
            ],
          ),
        );
      }),
    );
  }
}

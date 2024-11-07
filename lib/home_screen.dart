import 'package:flutter/material.dart';
import 'package:travel/utils/constant.dart';

import 'Widgets/navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: screenHeight * 0.05),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Top menu row
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "Images/menu1.png",
                      height: screenHeight * 0.05,
                      width: screenWidth * 0.1,
                    ),
                    Image.asset(
                      "Images/search1.png",
                      height: screenHeight * 0.05,
                      width: screenWidth * 0.1,
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),

              // Greeting row with profile image
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Hi a.dev_79",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Image.asset(
                                "Images/hand.png",
                                height: screenHeight * 0.04,
                                width: screenWidth * 0.08,
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Today is a good day\nto learn something new!",
                            style: TextStyle(color: Colors.black54, fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      "Images/profile.png",
                      height: screenHeight * 0.15,
                      width: screenHeight * 0.15,
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),

              // Category Selection
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      color: primaryColor,
                      child: SizedBox(
                        height: screenHeight * 0.06,
                        width: screenWidth * 0.25,
                        child: const Center(
                          child: Text(
                            "Top",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "Design",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const Text(
                      "Marketing",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Image.asset(
                      "Images/filter.png",
                      height: screenHeight * 0.05,
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),

              // Categories Header
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),

              // Category Images in Stack
              Container(
                height: screenHeight * 0.6,
                width: double.infinity,
                color: Color(0xfffef7ff),
                child: Stack(
                  children: [
                    Positioned(
                      left: screenWidth * 0.1,
                      top: screenHeight * 0.05,
                      child: displayImage(screenHeight * 0.22, "Images/graphic design.png"),
                    ),
                    Positioned(
                      right: screenWidth * 0.1,
                      top: screenHeight * 0.05,
                      child: displayImage(screenHeight * 0.22, "Images/programming.png"),
                    ),
                    Positioned(
                      left: screenWidth * 0.1,
                      top: screenHeight * 0.35,
                      child: displayImage(screenHeight * 0.22, "Images/finance1.png"),
                    ),
                    Positioned(
                      right: screenWidth * 0.1,
                      top: screenHeight * 0.35,
                      child: displayImage(screenHeight * 0.22, "Images/uidesign.png"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: screenHeight * 0.1,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavBarButton(
                icon: Icons.home,
                index: 0,
                selectedIndex: selectedIndex,
                onTap: () => setState(() => selectedIndex = 0),
              ),
              NavBarButton(
                icon: Icons.watch_later,
                index: 1,
                selectedIndex: selectedIndex,
                onTap: () => setState(() => selectedIndex = 1),
              ),
              NavBarButton(
                icon: Icons.favorite,
                index: 2,
                selectedIndex: selectedIndex,
                onTap: () => setState(() => selectedIndex = 2),
              ),
              NavBarButton(
                icon: Icons.person,
                index: 3,
                selectedIndex: selectedIndex,
                onTap: () => setState(() => selectedIndex = 3),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding displayImage(double size, String image) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: size,
        width: size,
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}



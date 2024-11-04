import 'package:flutter/material.dart';
import 'package:travel/utils/constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: screenHeight * 0.05),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                      "Images/filtr.png",
                      height: screenHeight * 0.05,
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
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
              Container(
                height: screenHeight * 0.7,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.white, Color.fromARGB(255, 233, 236, 246)],
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      child: displayImage(screenHeight * 0.3, "Images/graphic design.png"),
                    ),
                    Positioned(
                      right: 0,
                      child: displayImage(screenHeight * 0.27, "Images/programming.png"),
                    ),
                    Positioned(
                      left: 0,
                      top: screenHeight * 0.4,
                      child: displayImage(screenHeight * 0.27, "Images/finance1.png"),
                    ),
                    Positioned(
                      right: 0,
                      top: screenHeight * 0.35,
                      child: displayImage(screenHeight * 0.3, "Images/uidesign.png"),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: screenHeight * 0.13,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.04,
                            vertical: screenHeight * 0.015,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Card(
                                color: primaryColor,
                                child: SizedBox(
                                  height: screenHeight * 0.06,
                                  width: screenWidth * 0.15,
                                  child: const Icon(
                                    Icons.home,
                                    size: 35,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const Icon(Icons.watch_later, color: Colors.black45, size: 35),
                              const Icon(Icons.favorite, color: Colors.black45, size: 35),
                              const Icon(Icons.person_2, color: Colors.black45, size: 35),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding displayImage(double height, String image) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        height: height,
        width: 193,
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

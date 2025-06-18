import 'package:auvnet/constants.dart';
import 'package:auvnet/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
class HomeViewBody extends StatelessWidget {
  final List<String> images = [
    'assets/images/image copy 15.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Services:',
                  style: GoogleFonts.dmSans(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 105,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF5F5F5),
                        ),
                        child: Image.asset(
                          AssetsData.burger_image,
                          width: 57,
                          height: 40,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 16,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: kPrimaryColor,
                        ),
                        child: Center(
                          child: Text(
                            'Up to 50%',
                            style: GoogleFonts.dmSans(
                              color: Colors.white,
                              letterSpacing: 0.1,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Food',
                        style: GoogleFonts.dmSans(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          letterSpacing: 0.1,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 105,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF5F5F5),
                        ),
                        child: Image.asset(
                          AssetsData.meal_image,
                          width: 57,
                          height: 40,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 16,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: kPrimaryColor,
                        ),
                        child: Center(
                          child: Text(
                            '20 mins',
                            style: GoogleFonts.dmSans(
                              color: Colors.white,
                              letterSpacing: 0.1,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Column(
                        children: [
                          Text(
                            'Health &',
                            style: GoogleFonts.dmSans(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              letterSpacing: 0.1,
                            ),
                          ),
                          Text(
                            'wellness',
                            style: GoogleFonts.dmSans(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              letterSpacing: 0.1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 105,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF5F5F5),
                        ),
                        child: Image.asset(
                          AssetsData.veg_image,
                          width: 57,
                          height: 40,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 16,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: kPrimaryColor,
                        ),
                        child: Center(
                          child: Text(
                            '15 mins',
                            style: GoogleFonts.dmSans(
                              color: Colors.white,
                              letterSpacing: 0.1,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Groceries',
                        style: GoogleFonts.dmSans(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          letterSpacing: 0.1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 343,
              height: 89,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(0, 4),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      AssetsData.Container_image,
                      width: 43.7,
                      height: 43.5,
                    ),
                    SizedBox(width: 6),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Got a code !',
                          style: GoogleFonts.dmSans(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Add your code and save on your',
                          style: GoogleFonts.dmSans(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        Text(
                          'order',
                          style: GoogleFonts.dmSans(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Shortcuts:',
                  style: GoogleFonts.dmSans(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Color(0xffFFEEE6),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        AssetsData.note_image,
                        width: 20,
                        height: 20.67,
                      ),
                    ),
                    Text(
                      'Past',
                      style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      'orders',
                      style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Color(0xffFFEEE6),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        AssetsData.saver_image,
                        width: 20,
                        height: 20.67,
                      ),
                    ),
                    Text(
                      'Super',
                      style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      'Saver',
                      style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Color(0xffFFEEE6),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        AssetsData.musttries_image,
                        width: 20,
                        height: 20.67,
                      ),
                    ),
                    Text(
                      'Must-tries',
                      style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Color(0xffFFEEE6),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        AssetsData.give_back_image,
                        width: 20,
                        height: 20.67,
                      ),
                    ),
                    Text(
                      'Give Back',
                      style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Color(0xffFFEEE6),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        AssetsData.star_image,
                        width: 20,
                        height: 20.67,
                      ),
                    ),
                    Text(
                      'Best',
                      style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      'Seller',
                      style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                )
              ],
            ),
            CarouselSlider.builder(
              itemCount: images.length,
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 16 / 9,
                enlargeCenterPage: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
              ),
              itemBuilder: (context, index, realIndex) {
                return Container(
                  margin: EdgeInsets.all(5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      images[index],
                      fit: BoxFit.cover,
                      width: 1000,
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Popular restaurants nearby',
                  style: GoogleFonts.dmSans(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Image.asset(
                        AssetsData.allo_buiret,
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Text(
                      'Allo Beirut',
                      style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          AssetsData.clock,
                          height: 15,
                          width: 15,
                        ),
                        Text(
                          '32 mins',
                          style: GoogleFonts.dmSans(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Image.asset(
                        AssetsData.laffah,
                        height: 0,
                        width: 9,
                      ),
                    ),
                    Text(
                      'Laffah',
                      style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          AssetsData.clock,
                          height: 9,
                          width: 9,
                        ),
                        Text(
                          '32 mins',
                          style: GoogleFonts.dmSans(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Image.asset(
                        AssetsData.barber,
                        height: 9,
                        width: 9,
                      ),
                    ),
                    Text(
                      'Falafil Al',
                      style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          AssetsData.clock,
                          height: 9,
                          width: 9,
                        ),
                        Text(
                          '35 mins',
                          style: GoogleFonts.dmSans(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Image.asset(
                        AssetsData.barber2,
                        height: 9,
                        width: 9,
                      ),
                    ),
                    Text(
                      'Barbar',
                      style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          AssetsData.clock,
                          height: 9,
                          width: 9,
                        ),
                        Text(
                          '44 mins',
                          style: GoogleFonts.dmSans(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
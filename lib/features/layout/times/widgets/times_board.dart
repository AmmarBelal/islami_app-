import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami_application/core/theme/app_colors.dart';
import 'package:islami_application/model/salah.dart';

class times_board extends StatefulWidget {
  const times_board({super.key});

  @override
  State<times_board> createState() => _times_boardState();
}

class _times_boardState extends State<times_board> {
  List<salah> salahDataList = [
    salah(salahName: "dhr", salahTime: "12:05", salahDay: "pm"),
    salah(salahName: "asr", salahTime: "03:00", salahDay: "pm"),
    salah(salahName: "ma8rb", salahTime: "05:20", salahDay: "pm"),
    salah(salahName: "isha2", salahTime: "06:41", salahDay: "pm"),
   salah(salahName: "fajr", salahTime: "05:20", salahDay: "am")
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 301,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Color(0xFF856B3F),
          image: DecorationImage(
              image: AssetImage("assets/images/times_Screen/Group 10.png"),
              fit: BoxFit.cover)),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 26, top: 14),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 50,
                height: 50,
                child: Text(
                  "date",
                  style: TextStyle(
                    fontFamily: "Janna",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 26, top: 14),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 50,
                height: 50,
                child: Text(
                  "date",
                  style: TextStyle(
                    fontFamily: "Janna",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 92,
                height: 37,
                child: Text(
                  "Pray Time",
                  style: TextStyle(
                    fontFamily: "Janna",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF202020).withOpacity(0.71),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 38),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 76,
                height: 37,
                child: Text(
                  "day",
                  style: TextStyle(
                    fontFamily: "Janna",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 90),
            width: 390,
            height: 225,
            child: CarouselSlider(
                items: salahDataList.map((e) {
                  return Container(
                    width: 104,
                    height: 128,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(
                              "assets/images/times_Screen/Rectangle 141.png"),
                        )),
                    child: Column(
                      children: [
                        Text(
                          e.salahName,
                          style: TextStyle(
                              fontFamily: "Janna",
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          e.salahTime,
                          style: TextStyle(
                              fontFamily: "Janna",
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          e.salahDay,
                          style: TextStyle(
                              fontFamily: "Janna",
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  aspectRatio: 0.7,
                  viewportFraction: 0.3,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: false,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                )),
          )
        ],
      ),
    );
  }
}

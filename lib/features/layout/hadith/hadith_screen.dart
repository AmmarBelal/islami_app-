import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_application/core/constants/app_assets.dart';
import 'package:islami_application/features/layout/hadith/wedgets/hadith_card.dart';
import 'package:islami_application/model/hadith_data.dart';

class hadith extends StatefulWidget {
  static String routeName = "/hadith";
  const hadith({super.key});

  @override
  State<hadith> createState() => _hadithState();
}

class _hadithState extends State<hadith> {
  List<hadithData> hadithDataList = [];

  @override
  Widget build(BuildContext context) {
   if(hadithDataList.isEmpty) loadHadith();
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppAssets.Hadithback), fit: BoxFit.cover),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 30),
          Image.asset("assets/images/qur2an_Screen/Logo (2).png"),
          Expanded(
            child: CarouselSlider(
                items: hadithDataList.map((e) {
                  return hadithCard(
                    HadithData: e,
                  );
                }).toList(),
                options: CarouselOptions(
                  aspectRatio: 0.7,
                  viewportFraction: 0.68,
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

  loadHadith() async {
    String content =
        await rootBundle.loadString("assets/files/hadith/ALahadith.txt");

    List<String> allHadithList = content.split("#");

    for (var element in allHadithList) {
      String singleHadith = element.trim();
      int index = singleHadith.indexOf("\n");
      String hadithContent = singleHadith.substring(index);
      String headOfHadith = singleHadith.substring(0, index + 1);

      var HadithData =
          hadithData(hadithContent: hadithContent, hadithTitle: headOfHadith);

      hadithDataList.add(HadithData);

      setState(() {

      });
    }
  }
}

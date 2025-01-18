import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_application/core/theme/app_colors.dart';
import 'package:islami_application/features/layout/qur2an/widgets/sura_card_data.dart';

import '../../../model/sura_data.dart';

class quranDetails extends StatefulWidget {
  quranDetails({super.key});
  static String routeName = "/quranDetails";

  @override
  State<quranDetails> createState() => _quranDetailsState();
}

class _quranDetailsState extends State<quranDetails> {
  List<String> ayatData = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as QuranData;

    if(ayatData.isEmpty) loadData(args.suraId.toString());

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  "assets/images/qur2an_Screen/Soura Details Screen (1).png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent.withOpacity(0),
          iconTheme: const IconThemeData(color: AppColors.gold),
          centerTitle: true,
          title: Text(
            args.suraNameEn,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.gold,
                fontFamily: "Janna"),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 60),
              child: Text(
                args.suraNameAr,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.gold,
                    fontFamily: "Janna"),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context, index) =>
                    Text(
                      " [${index + 1}] ${ayatData[index]}  ",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.gold,
                      fontFamily: "Janna"),
                ),
                itemCount: ayatData.length,
              ),
            )
          ],
        ),
      ),
    );
  }

  loadData(String ID) async {
    String content = await rootBundle.loadString("assets/files/suras/$ID.txt");
    print(content);
    setState(() {
      ayatData = content.split("\n");
    });
  }
}

import 'package:flutter/material.dart';
import 'package:islami_application/core/constants/app_assets.dart';
import 'package:islami_application/core/theme/app_colors.dart';
import 'package:islami_application/features/layout/qur2an/qur2an_details.dart';
import 'package:islami_application/features/layout/qur2an/widgets/recent_block.dart';
import 'package:islami_application/features/layout/qur2an/widgets/sura_card_data.dart';
import 'package:islami_application/model/recent_Data.dart';

import '../../../model/sura_data.dart';

class qur2an extends StatelessWidget {
  static String routeName = "/qur2an";
  qur2an({super.key});

  List<RecentData> recentDataList = [
    RecentData(
        suranameAR: "الأنبياء", suranameEN: "Al-Anbiya", suraverses: "112"),
    RecentData(
        suranameAR: "الأنبياء", suranameEN: "Al-Anbiya", suraverses: "112"),
    RecentData(
        suranameAR: "الأنبياء", suranameEN: "Al-Anbiya", suraverses: "112")
  ];
  List<QuranData> quranDataList = [
    QuranData(suraNameEn: "Al-Fatihah", suraNameAr: "الفاتحة", suraVerses: "7", suraId: '1'),
    QuranData(suraNameEn: "Al-Baqarah", suraNameAr: "البقرة", suraVerses: "286", suraId: '2'),
    QuranData(suraNameEn: "Aal-E-Imran", suraNameAr: "آل عمران", suraVerses: "200", suraId: '3'),
    QuranData(suraNameEn: "An-Nisa'", suraNameAr: "النساء", suraVerses: "176", suraId: '4'),
    QuranData(suraNameEn: "Al-Ma'idah", suraNameAr: "المائدة", suraVerses: "120", suraId: '5'),
    QuranData(suraNameEn: "Al-An'am", suraNameAr: "الأنعام", suraVerses: "165", suraId: '6'),
    QuranData(suraNameEn: "Al-A'raf", suraNameAr: "الأعراف", suraVerses: "206", suraId: '7'),
    QuranData(suraNameEn: "Al-Anfal", suraNameAr: "الأنفال", suraVerses: "75", suraId: '8'),
    QuranData(suraNameEn: "At-Tawbah", suraNameAr: "التوبة", suraVerses: "129", suraId: '9'),
    QuranData(suraNameEn: "Yunus", suraNameAr: "يونس", suraVerses: "109", suraId: '10'),
    QuranData(suraNameEn: "Hud", suraNameAr: "هود", suraVerses: "123", suraId: '11'),
    QuranData(suraNameEn: "Yusuf", suraNameAr: "يوسف", suraVerses: "111", suraId: '12'),
    QuranData(suraNameEn: "Ar-Ra'd", suraNameAr: "الرعد", suraVerses: "43", suraId: '13'),
    QuranData(suraNameEn: "Ibrahim", suraNameAr: "إبراهيم", suraVerses: "52", suraId: '14'),
    QuranData(suraNameEn: "Al-Hijr", suraNameAr: "الحجر", suraVerses: "99", suraId: '15'),
    QuranData(suraNameEn: "An-Nahl", suraNameAr: "النحل", suraVerses: "128", suraId: '16'),
    QuranData(suraNameEn: "Al-Isra", suraNameAr: "الإسراء", suraVerses: "111", suraId: '17'),
    QuranData(suraNameEn: "Al-Kahf", suraNameAr: "الكهف", suraVerses: "110", suraId: '18'),
    QuranData(suraNameEn: "Maryam", suraNameAr: "مريم", suraVerses: "98", suraId: '19'),
    QuranData(suraNameEn: "Ta-Ha", suraNameAr: "طه", suraVerses: "135", suraId: '20'),
    QuranData(suraNameEn: "Al-Anbiya", suraNameAr: "الأنبياء", suraVerses: "112", suraId: '21'),
    QuranData(suraNameEn: "Al-Hajj", suraNameAr: "الحج", suraVerses: "78", suraId: '22'),
    QuranData(suraNameEn: "Al-Mu'minun", suraNameAr: "المؤمنون", suraVerses: "118", suraId: '23'),
    QuranData(suraNameEn: "An-Nur", suraNameAr: "النّور", suraVerses: "64", suraId: '24'),
    QuranData(suraNameEn: "Al-Furqan", suraNameAr: "الفرقان", suraVerses: "77", suraId: '25'),
    QuranData(suraNameEn: "Ash-Shu'ara", suraNameAr: "الشعراء", suraVerses: "227", suraId: '26'),
    QuranData(suraNameEn: "An-Naml", suraNameAr: "النّمل", suraVerses: "93", suraId: '27'),
    QuranData(suraNameEn: "Al-Qasas", suraNameAr: "القصص", suraVerses: "88", suraId: '28'),
    QuranData(suraNameEn: "Al-Ankabut", suraNameAr: "العنكبوت", suraVerses: "69", suraId: '29'),
    QuranData(suraNameEn: "Ar-Rum", suraNameAr: "الرّوم", suraVerses: "60", suraId: '30'),
    QuranData(suraNameEn: "Luqman", suraNameAr: "لقمان", suraVerses: "34", suraId: '31'),
    QuranData(suraNameEn: "As-Sajda", suraNameAr: "السجدة", suraVerses: "30", suraId: '32'),
    QuranData(suraNameEn: "Al-Ahzab", suraNameAr: "الأحزاب", suraVerses: "73", suraId: '33'),
    QuranData(suraNameEn: "Saba", suraNameAr: "سبأ", suraVerses: "54", suraId: '34'),
    QuranData(suraNameEn: "Fatir", suraNameAr: "فاطر", suraVerses: "45", suraId: '35'),
    QuranData(suraNameEn: "Ya-Sin", suraNameAr: "يس", suraVerses: "83", suraId: '36'),
    QuranData(suraNameEn: "As-Saffat", suraNameAr: "الصافات", suraVerses: "182", suraId: '37'),
    QuranData(suraNameEn: "Sad", suraNameAr: "ص", suraVerses: "88", suraId: '38'),
    QuranData(suraNameEn: "Az-Zumar", suraNameAr: "الزمر", suraVerses: "75", suraId: '39'),
    QuranData(suraNameEn: "Ghafir", suraNameAr: "غافر", suraVerses: "85", suraId: '40'),
    QuranData(suraNameEn: "Fussilat", suraNameAr: "فصّلت", suraVerses: "54", suraId: '41'),
    QuranData(suraNameEn: "Ash-Shura", suraNameAr: "الشورى", suraVerses: "53", suraId: '42'),
    QuranData(suraNameEn: "Az-Zukhruf", suraNameAr: "الزخرف", suraVerses: "89", suraId: '43'),
    QuranData(suraNameEn: "Ad-Dukhan", suraNameAr: "الدّخان", suraVerses: "59", suraId: '44'),
    QuranData(suraNameEn: "Al-Jathiya", suraNameAr: "الجاثية", suraVerses: "37", suraId: '45'),
    QuranData(suraNameEn: "Al-Ahqaf", suraNameAr: "الأحقاف", suraVerses: "35", suraId: '46'),
    QuranData(suraNameEn: "Muhammad", suraNameAr: "محمد", suraVerses: "38", suraId: '47'),
    QuranData(suraNameEn: "Al-Fath", suraNameAr: "الفتح", suraVerses: "29", suraId: '48'),
    QuranData(suraNameEn: "Al-Hujurat", suraNameAr: "الحجرات", suraVerses: "18", suraId: '49'),
    QuranData(suraNameEn: "Qaf", suraNameAr: "ق", suraVerses: "45", suraId: '50'),
    QuranData(suraNameEn: "Adh-Dhariyat", suraNameAr: "الذاريات", suraVerses: "60", suraId: '51'),
    QuranData(suraNameEn: "At-Tur", suraNameAr: "الطور", suraVerses: "49", suraId: '52'),
    QuranData(suraNameEn: "An-Najm", suraNameAr: "النجم", suraVerses: "62", suraId: '53'),
    QuranData(suraNameEn: "Al-Qamar", suraNameAr: "القمر", suraVerses: "55", suraId: '54'),
    QuranData(suraNameEn: "Ar-Rahman", suraNameAr: "الرحمن", suraVerses: "78", suraId: '55'),
    QuranData(suraNameEn: "Al-Waqi'a", suraNameAr: "الواقعة", suraVerses: "96", suraId: '56'),
    QuranData(suraNameEn: "Al-Hadid", suraNameAr: "الحديد", suraVerses: "29", suraId: '57'),
    QuranData(suraNameEn: "Al-Mujadila", suraNameAr: "المجادلة", suraVerses: "22", suraId: '58'),
    QuranData(suraNameEn: "Al-Hashr", suraNameAr: "الحشر", suraVerses: "24", suraId: '59'),
    QuranData(suraNameEn: "Al-Mumtahina", suraNameAr: "الممتحنة", suraVerses: "13", suraId: '60'),
    QuranData(suraNameEn: "As-Saff", suraNameAr: "الصف", suraVerses: "14", suraId: '61'),
    QuranData(suraNameEn: "Al-Jumu'a", suraNameAr: "الجمعة", suraVerses: "11", suraId: '62'),
    QuranData(suraNameEn: "Al-Munafiqun", suraNameAr: "المنافقون", suraVerses: "11", suraId: '63'),
    QuranData(suraNameEn: "At-Taghabun", suraNameAr: "التغابن", suraVerses: "18", suraId: '64'),
    QuranData(suraNameEn: "At-Talaq", suraNameAr: "الطلاق", suraVerses: "12", suraId: '65'),
    QuranData(suraNameEn: "At-Tahrim", suraNameAr: "التحريم", suraVerses: "12", suraId: '66'),
    QuranData(suraNameEn: "Al-Mulk", suraNameAr: "الملك", suraVerses: "30", suraId: '67'),
    QuranData(suraNameEn: "Al-Qalam", suraNameAr: "القلم", suraVerses: "52", suraId: '68'),
    QuranData(suraNameEn: "Al-Haqqah", suraNameAr: "الحاقة", suraVerses: "52", suraId: '69'),
    QuranData(suraNameEn: "Al-Ma'arij", suraNameAr: "المعارج", suraVerses: "44", suraId: '70'),
    QuranData(suraNameEn: "Nuh", suraNameAr: "نوح", suraVerses: "28", suraId: '71'),
    QuranData(suraNameEn: "Al-Jinn", suraNameAr: "الجن", suraVerses: "28", suraId: '72'),
    QuranData(suraNameEn: "Al-Muzzammil", suraNameAr: "المزّمّل", suraVerses: "20", suraId: '73'),
    QuranData(suraNameEn: "Al-Muddathir", suraNameAr: "المدّثر", suraVerses: "56", suraId: '74'),
    QuranData(suraNameEn: "Al-Qiyamah", suraNameAr: "القيامة", suraVerses: "40", suraId: '75'),
    QuranData(suraNameEn: "Al-Insan", suraNameAr: "الإنسان", suraVerses: "31", suraId: '76'),
    QuranData(suraNameEn: "Al-Mursalat", suraNameAr: "المرسلات", suraVerses: "50", suraId: '77'),
    QuranData(suraNameEn: "An-Naba'", suraNameAr: "النبأ", suraVerses: "40", suraId: '78'),
    QuranData(suraNameEn: "An-Nazi'at", suraNameAr: "النازعات", suraVerses: "46", suraId: '79'),
    QuranData(suraNameEn: "Abasa", suraNameAr: "عبس", suraVerses: "42", suraId: '80'),
    QuranData(suraNameEn: "At-Takwir", suraNameAr: "التكوير", suraVerses: "29", suraId: '81'),
    QuranData(suraNameEn: "Al-Infitar", suraNameAr: "الإنفطار", suraVerses: "19", suraId: '82'),
    QuranData(suraNameEn: "Al-Mutaffifin", suraNameAr: "المطفّفين", suraVerses: "36", suraId: '83'),
    QuranData(suraNameEn: "Al-Inshiqaq", suraNameAr: "الإنشقاق", suraVerses: "25", suraId: '84'),
    QuranData(suraNameEn: "Al-Buruj", suraNameAr: "البروج", suraVerses: "22", suraId: '85'),
    QuranData(suraNameEn: "At-Tariq", suraNameAr: "الطارق", suraVerses: "17", suraId: '86'),
    QuranData(suraNameEn: "Al-A'la", suraNameAr: "الأعلى", suraVerses: "19", suraId: '87'),
    QuranData(suraNameEn: "Al-Ghashiyah", suraNameAr: "الغاشية", suraVerses: "26", suraId: '88'),
    QuranData(suraNameEn: "Al-Fajr", suraNameAr: "الفجر", suraVerses: "30", suraId: '89'),
    QuranData(suraNameEn: "Al-Balad", suraNameAr: "البلد", suraVerses: "20", suraId: '90'),
    QuranData(suraNameEn: "Ash-Shams", suraNameAr: "الشمس", suraVerses: "15", suraId: '91'),
    QuranData(suraNameEn: "Al-Lail", suraNameAr: "الليل", suraVerses: "21", suraId: '92'),
    QuranData(suraNameEn: "Ad-Duha", suraNameAr: "الضحى", suraVerses: "11", suraId: '93'),
    QuranData(suraNameEn: "Ash-Sharh", suraNameAr: "الشرح", suraVerses: "8", suraId: '94'),
    QuranData(suraNameEn: "At-Tin", suraNameAr: "التين", suraVerses: "8", suraId: '95'),
    QuranData(suraNameEn: "Al-Alaq", suraNameAr: "العلق", suraVerses: "19", suraId: '96'),
    QuranData(suraNameEn: "Al-Qadr", suraNameAr: "القدر", suraVerses: "5", suraId: '97'),
    QuranData(suraNameEn: "Al-Bayyina", suraNameAr: "البينة", suraVerses: "8", suraId: '98'),
    QuranData(suraNameEn: "Az-Zalzalah", suraNameAr: "الزلزلة", suraVerses: "8", suraId: '99'),
    QuranData(suraNameEn: "Al-Adiyat", suraNameAr: "العاديات", suraVerses: "11", suraId: '100'),
    QuranData(suraNameEn: "Al-Qari'ah", suraNameAr: "القارعة", suraVerses: "11", suraId: '101'),
    QuranData(suraNameEn: "At-Takathur", suraNameAr: "التكاثر", suraVerses: "8", suraId: '102'),
    QuranData(suraNameEn: "Al-Asr", suraNameAr: "العصر", suraVerses: "3", suraId: '103'),
    QuranData(suraNameEn: "Al-Humazah", suraNameAr: "الهمزة", suraVerses: "9", suraId: '104'),
    QuranData(suraNameEn: "Al-Fil", suraNameAr: "الفيل", suraVerses: "5", suraId: '105'),
    QuranData(suraNameEn: "Quraish", suraNameAr: "قريش", suraVerses: "4", suraId: '106'),
    QuranData(suraNameEn: "Al-Ma'un", suraNameAr: "الماعون", suraVerses: "7", suraId: '107'),
    QuranData(suraNameEn: "Al-Kawthar", suraNameAr: "الكوثر", suraVerses: "3", suraId: '108'),
    QuranData(suraNameEn: "Al-Kafirun", suraNameAr: "الكافرون", suraVerses: "6", suraId: '109'),
    QuranData(suraNameEn: "An-Nasr", suraNameAr: "النصر", suraVerses: "3", suraId: '110'),
    QuranData(suraNameEn: "Al-Masad", suraNameAr: "المسد", suraVerses: "5", suraId: '111'),
    QuranData(suraNameEn: "Al-Ikhlas", suraNameAr: "الإخلاص", suraVerses: "4", suraId: '112'),
    QuranData(suraNameEn: "Al-Falaq", suraNameAr: "الفلق", suraVerses: "5", suraId: '113'),
    QuranData(suraNameEn: "An-Nas", suraNameAr: "الناس", suraVerses: "6", suraId: '114')
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.Qur2anBack), fit: BoxFit.cover)),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset("assets/images/qur2an_Screen/Logo (2).png"),
            TextFormField(
              style: const TextStyle(
                color: AppColors.offWhite,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              decoration: InputDecoration(
                  fillColor: AppColors.black.withOpacity(0.5),
                  filled: true,
                  hintText: "Sura Name",
                  hintStyle: const TextStyle(
                    fontFamily: "Janna",
                    color: AppColors.offWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: ImageIcon(
                      AssetImage(
                        AppAssets.Qur2qnICN,
                      ),
                      color: AppColors.gold,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: AppColors.gold),
                      borderRadius: BorderRadius.circular(16)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: AppColors.gold),
                      borderRadius: BorderRadius.circular(16))),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Most Recently",
                style: TextStyle(
                    fontFamily: "Janna",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.offWhite),
              ),
            ),
            SizedBox(
              height: 155,
              child: ListView.builder(
                itemCount: recentDataList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => recentContainer(
                  recentData: recentDataList[index],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Suras List",
                style: TextStyle(
                    fontFamily: "Janna",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.offWhite),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: quranDataList.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, quranDetails.routeName,
                      arguments: quranDataList[index] );

                },
                child: suraCardData(
                  suraData: quranDataList[index] ,

                ),
              ),
              separatorBuilder: (context, index) => const Divider(
                endIndent: 60,
                indent: 60,
                color: AppColors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

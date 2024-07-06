import 'package:flutter/material.dart';
import 'package:taskwarrior/app/utils/constants/taskwarrior_colors.dart';
import 'package:taskwarrior/app/utils/constants/taskwarrior_fonts.dart';
import 'package:taskwarrior/app/utils/gen/fonts.gen.dart';
import 'package:taskwarrior/app/utils/language/sentence_manager.dart';
import 'package:taskwarrior/app/utils/app_settings.dart';

class CommonChartIndicator extends StatelessWidget {
  final String title;
  const CommonChartIndicator({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: FontFamily.poppins,
                fontWeight: TaskWarriorFonts.bold,
                color: AppSettings.isDarkMode ? Colors.white : Colors.black,
                fontSize: TaskWarriorFonts.fontSizeMedium,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  height: 20,
                  width: 80,
                  decoration: BoxDecoration(color: TaskWarriorColors.green),
                ),
                Text(
                  SentenceManager(currentLanguage: AppSettings.selectedLanguage)
                      .sentences
                      .reportsPageCompleted,
                  style: TextStyle(
                    fontFamily: FontFamily.poppins,
                    fontWeight: TaskWarriorFonts.regular,
                    color: AppSettings.isDarkMode ? Colors.white : Colors.black,
                    fontSize: TaskWarriorFonts.fontSizeSmall,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 20,
                  width: 80,
                  decoration: BoxDecoration(color: TaskWarriorColors.yellow),
                ),
                Text(
                  SentenceManager(currentLanguage: AppSettings.selectedLanguage)
                      .sentences
                      .reportsPagePending,
                  style: TextStyle(
                    fontFamily: FontFamily.poppins,
                    fontWeight: TaskWarriorFonts.regular,
                    color: AppSettings.isDarkMode ? Colors.white : Colors.black,
                    fontSize: TaskWarriorFonts.fontSizeSmall,
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}

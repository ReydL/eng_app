import 'package:eng_app/core/ui/app_container.dart';
// import 'package:eng_app/core/ui/table_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThemePage extends StatelessWidget {
  const ThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Глагол To be'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: AppContainer(
                  title: 'Affirmative form',
                  child: SvgPicture.asset('assets/images/table_1.svg')
                  // TableTheme(
                  //   borderTop: true,
                  //   firstHeader: 'I',
                  //   firstDescription: ['Am', '\'M'],
                  //   firstExamples: ['I am student', 'I\'m from Kyrgyzstan'],
                  //   secondHeader: 'You',
                  //   secondDescription: ['Are,\'re'],
                  //   secondExamples: ['You are student', 'You\'re from Kyrgyzstan '],
                  // ),
                  ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: AppContainer(
                title: 'Negative form',
                child: SvgPicture.asset('assets/images/table_2.svg'),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Дальше'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

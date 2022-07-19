import 'package:flutter/material.dart';
import 'package:images_fonts_/resources/image.dart';
import 'package:images_fonts_/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'theme/text_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WelcomeScreen(),
    );
  }
}

bool isChecked = false;

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorAmberAccent,
      appBar: AppBar(
        elevation: 0,
        shadowColor: AppColors.colorRed,
        backgroundColor: AppColors.colorRed,
        actions: [
          TextButton(
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(AppColors.colorVeryRed),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SkipedScreen(),
                ),
              );
            },
            child: Text(
              'Skip',
              style: AppTextStyly.nunito16w400.copyWith(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
        child: Center(
          child: Column(children: [
            Container(
              height: 263,
              width: double.infinity,
              child: InkWell(
                onTap: () {
                  print('МЯСО??');
                },
                child: Image.asset(
                  AppImages.luffy,
                  scale: 3.5,
                ),
              ),
            ),
            Image.asset(
              AppImages.luffyGif,
              scale: 1.7,
            ),
            const Spacer(),
            const Text(
              'Hallo!',
              style: AppTextStyly.nunito40w700,
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              'My name is Monkey D Luffy, and I become a king of the pirates!',
              textAlign: TextAlign.center,
              style:
                  AppTextStyly.nunito16w400.copyWith(color: Color(0xff000000)),
            ),
            Checkbox(
                activeColor: AppColors.colorA0,
                value: isChecked,
                onChanged: (value) {
                  setState(() => isChecked = value!);
                }),
            const Spacer(),
          ]),
        ),
      ),
    );
  }
}

class SkipedScreen extends StatelessWidget {
  const SkipedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorF5F5F5,
      appBar: AppBar(
        backgroundColor: AppColors.colorGreenAccent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
        child: Center(
          child: Column(children: [
            Container(
              height: 263,
              width: double.infinity,
              child: InkWell(
                onTap: () {
                  print('Враг??');
                },
                child: Image.asset(
                  AppImages.zoroKnife,
                  scale: 3,
                ),
              ),
            ),
            Image.asset(
              AppImages.zoroGif,
              scale: 1.7,
            ),
            const Spacer(),
            const Text(
              'Hey!',
              style: AppTextStyly.nunito40w700,
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "I'm Zoro, I'm a former pirate hunter and my goal is to become the best swordsman in the world.",
              textAlign: TextAlign.center,
              style:
                  AppTextStyly.nunito16w400.copyWith(color: Color(0xff000000)),
            ),
            const Spacer(),
          ]),
        ),
      ),
    );
  }
}

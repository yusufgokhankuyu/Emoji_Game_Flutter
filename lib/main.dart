import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:emoji_game/screens/HomeScreen.dart';
import 'package:emoji_game/screens/LevelsPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emoji Game',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Emoji Game'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Lottie.asset(
            'assets/splash.json',
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Emojilerle Şarkılar',
            textAlign: TextAlign.center,
            style: GoogleFonts.quicksand(
                fontSize: 25,
                color: Colors.yellow,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          // Text.rich(
          //   TextSpan(text: "to ", children: <TextSpan>[
          //     TextSpan(
          //         text: 'PDF',
          //         style: GoogleFonts.quicksand(
          //             fontSize: 16,
          //             color: Colors.black,
          //             fontWeight: FontWeight.bold)),
          //   ]),
          //   textAlign: TextAlign.center,
          //   style: GoogleFonts.quicksand(
          //       fontSize: 25, color: Colors.red, fontWeight: FontWeight.bold),
          // ),
        ],
      ),
      nextScreen: const LevelsPage(),
      backgroundColor: Colors.white,
      splashIconSize: 500,
      duration: 4000,
      splashTransition: SplashTransition.fadeTransition,
      animationDuration: const Duration(seconds: 2),
    );
  }
}

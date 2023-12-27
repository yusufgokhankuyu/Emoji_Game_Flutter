import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:emoji_game/models/question_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  int level;
  HomeScreen({super.key, required this.level});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
//   int currentQuestionIndex = 0;
//   int score = 0;
//   List<Question> questions = [
//     Question(
//         emoji: "🔪🚶‍♂️❓\n📞💡💫👩‍❤️‍👨",
//         options: ["Ara Beni", "Adı Bende Saklı", "Keskin Bıçak", "Nazar Eyle"],
//         correctAnswer: "Ara Beni"),
//     Question(
//       emoji: "🎸🎤🤘",
//       options: ["Song A", "Song B", "Song C", "Song D"],
//       correctAnswer: "Song A",
//     ),
//     // Add more questions as needed
//   ];

//   void answerQuestion(String selectedAnswer) {
//     if (selectedAnswer == questions[currentQuestionIndex].correctAnswer) {
//       // Handle correct answer
//       setState(() {
//         score++;
//       });
//       print("Correct!");
//     } else {
//       // Handle incorrect answer
//       print("Incorrect!");
//     }

//     // Move to the next question
//     setState(() {
//       if (currentQuestionIndex < questions.length - 1) {
//         currentQuestionIndex++;
//       } else {
//         // Quiz is over
//         print("Quiz completed! Your score: $score");
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Emoji Quiz"),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             // Text(
//             //   "Guess the song based on the emoji:",
//             //   style: TextStyle(fontSize: 18.0),
//             // ),
//             const SizedBox(height: 40.0),
//             Text(
//               questions[currentQuestionIndex].emoji,
//               textAlign: TextAlign.center,
//               style: const TextStyle(fontSize: 40.0),
//             ),
//             const SizedBox(height: 40.0),
//             Column(
//               children: questions[currentQuestionIndex].options.map((option) {
//                 return InkWell(
//                   onTap: () => answerQuestion(option),
//                   child: Container(
//                     margin: const EdgeInsets.all(10),
//                     alignment: Alignment.center,
//                     width: MediaQuery.sizeOf(context).width * 0.9,
//                     height: MediaQuery.sizeOf(context).height * 0.06,
//                     decoration: BoxDecoration(
//                         color: Colors.red,
//                         borderRadius: BorderRadius.circular(20)),
//                     child: Text(
//                       option,
//                       style: GoogleFonts.quicksand(
//                           fontSize: 20,
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 );

//                 // ElevatedButton(
//                 //   onPressed: () => answerQuestion(option),
//                 //   child: Text(option),
//                 // );
//               }).toList(),
//             ),
//             const SizedBox(height: 20.0),
//             Text("Score: $score"),
//           ],
//         ),
//       ),
//     );
//   }
// }
  late List<Question> questionList;

  late CountDownController _countDownController;
  @override
  void initState() {
    super.initState();

    _countDownController = CountDownController();

    // widget.level kullanılabilir
    if (widget.level >= 1 && widget.level <= 4) {
      int start = (widget.level - 1) * 10 + 1;
      int end = widget.level * 10;

      questionList =
          getQuestions().skip(start - 1).take(end - start + 1).toList();
    } else {
      // Geçerli bir level değeri yoksa, varsayılan işlemi yapabilirsiniz
    }
  }

  int currentQuestionIndex = 0;
  int score = 0;
  var selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 89, 132, 203),
      //const Color.fromARGB(255, 5, 5, 80),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 12, 73, 122),
                Colors.blue,
                Colors.white
              ],
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              Text(
                "Şarkıyı Tahmin Et",
                style: GoogleFonts.quicksand(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              _questionWidget(),
              const SizedBox(
                height: 15,
              ),
              _answerList(),
              const SizedBox(
                height: 15,
              ),
              _nextButton(),
              const SizedBox(
                height: 60,
              ),
              // const Text(
              //   "@yusufgokhankuyu2023",
              //   style: TextStyle(
              //       color: Colors.white, decoration: TextDecoration.underline),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Soru ${currentQuestionIndex + 1}/${questionList.length.toString()}",
                  style: GoogleFonts.quicksand(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Level ${widget.level}",
                  style: GoogleFonts.quicksand(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                CircularCountDownTimer(
                  duration: 15, // Saniye cinsinden süre
                  initialDuration: 0,
                  controller: _countDownController,
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 15,
                  ringColor: Colors.grey[300]!,
                  ringGradient: null,
                  fillColor: Colors.blueAccent,
                  fillGradient: null,
                  backgroundColor: Colors.transparent,
                  backgroundGradient: null,
                  strokeWidth: 5.0,
                  strokeCap: StrokeCap.round,
                  textStyle: GoogleFonts.quicksand(
                      fontSize: 22.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textFormat: CountdownTextFormat.S,
                  isReverse: true,
                  isReverseAnimation: false,
                  isTimerTextShown: true,
                  autoStart: true,
                  onStart: () {
                    // Timer başladığında yapılacak işlemler (opsiyonel)
                  },
                  onComplete: () {
                    // Zaman bittiğinde yapılacak işlemler (opsiyonel)
                    _handleTimeUp();
                  },
                ),
                const SizedBox(height: 10),
                Text(
                  "Kalan Süre",
                  style: GoogleFonts.quicksand(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(16),
          ),
          width: double.infinity,
          child: Text(
            questionList[currentQuestionIndex].emoji,
            style: const TextStyle(
              fontSize: 32,
            ),
          ),
        ),
      ],
    );
  }

  _handleTimeUp() {
    // Zaman bittiğinde yapılacak işlemler
    print("Time's up!");

    // İsterseniz soruyu otomatik olarak yanlış kabul edebilir veya farklı bir şey yapabilirsiniz.
    // Örneğin: answerQuestion("TIME_UP");

    // Otomatik olarak bir sonraki soruya geç
    _moveToNextQuestion();
  }

  _moveToNextQuestion() {
    if (_countDownController != null) {
      // Timer'ı sıfırla ve bir sonraki soruya geç
      _countDownController.restart(duration: 15);
    }

    setState(() {
      selectedAnswer = null;
      if (currentQuestionIndex < questionList.length - 1) {
        currentQuestionIndex++;
      } else {
        // Eğer sorular bitmişse, quiz tamamlanmıştır.
        _showScoreDialog();
      }
    });
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .options
          .map(
            (answer) => _answerButton(answer),
          )
          .toList(),
    );
  }

  Widget _answerButton(String answer) {
    bool isCorrectAnswer =
        answer == questionList[currentQuestionIndex].correctAnswer;
    bool isSelected = answer == selectedAnswer;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: isSelected ? Colors.orangeAccent : Colors.white,
          onPrimary: isSelected ? Colors.white : Colors.black,
        ),
        onPressed: () {
          if (selectedAnswer == null) {
            if (isCorrectAnswer) {
              score++;
            }
            setState(() {
              selectedAnswer = answer;
            });
          }
        },
        child: Text(
          answer,
          style:
              GoogleFonts.quicksand(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = currentQuestionIndex == questionList.length - 1;

    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: Colors.blueAccent,
          onPrimary: Colors.white,
        ),
        onPressed: () {
          if (isLastQuestion) {
            //display score
            _countDownController.pause();
            showDialog(context: context, builder: (_) => _showScoreDialog());
          } else {
            //next question
            setState(() {
              selectedAnswer = null;
              currentQuestionIndex++;
              _countDownController.restart(duration: 15);
            });
          }
        },
        child: Text(isLastQuestion ? "Kaydet" : "İleri",
            style: GoogleFonts.quicksand()),
      ),
    );
  }

  _showScoreDialog() {
    bool isPassed = score >= questionList.length * 0.6;
    String title =
        isPassed ? "Tebrikler :)" : "Başarısız :( \nŞansını Tekrar Dene";

    return AlertDialog(
      title: Text(
        title + "\n" + "${questionList.length} soruda $score soru bildin.",
        style: GoogleFonts.quicksand(
            color: isPassed ? Colors.green : Colors.redAccent),
      ),
      content: ElevatedButton(
        child: Text(
          "Tekrar oyna",
          style: GoogleFonts.quicksand(),
        ),
        onPressed: () {
          Navigator.pop(context);
          setState(() {
            _countDownController.restart(duration: 15);
            currentQuestionIndex = 0;
            score = 0;
            selectedAnswer = null;
          });
        },
      ),
    );
  }
}

import 'package:exam_prep/module/random_questions_attempt/random_question.dart';
import 'package:exam_prep/module/tab_screens/tab_screens.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Exam Prep',
        theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const TabScreens(),
        routes: {
          TabScreens.route: (route) => const TabScreens(),
          RandomQuestion.route: (route) => const RandomQuestion()
        },
    );
  }
}

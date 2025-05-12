class QuestionAnswersModel {
  final String question;
  final List<dynamic> options;

  QuestionAnswersModel({required this.question, required this.options});
}

List<QuestionAnswersModel> questionsRepo = [
  QuestionAnswersModel(
      question: "",
    options: [
        "",
      "",
  ],
  )
];

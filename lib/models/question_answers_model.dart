
class QuestionAnswersModel {
  final String question;
  final List<dynamic> options;

  QuestionAnswersModel({required this.question, required this.options});
}

List<QuestionAnswersModel> questionsAndAnswersRepo = [
  QuestionAnswersModel(
    question:
        "Select the correct judgement about the global economy from the list below",
    options: [
      "The functioning of the world economy is based on the international division of labor",
      "The trade balance is the difference between imports and exports for a certain period",
      "State regulation of foreign trade is carried out exclusively by tariff methods",
      "International economic relations are carried out in the form of monetary and credit relations",
    ],
  )
];

import 'tweet.dart';

class SentimentEnricher {
  doEnrich(Tweet tweet) {
    final text = tweet.text!.toLowerCase();
    if (text.contains("aime") && text.contains("pas")) {
      tweet.sentiment = "negatif";
    } else if (text.contains("aime") && !text.contains("pas")) {
      tweet.sentiment = "positif";
    } else {
      tweet.sentiment = "neutre";
    }
  }
}

class PecresseEnricher {
  doEnrich(Tweet tweet) {
    if (tweet.text!.toLowerCase().contains(RegExp("p[eéè]cre"))) {
      tweet.candidat = "pecresse";
    }
  }
}

class CandidatEnricher {
  static const candidats = [
    "Nathalie Arthaud",
    "Fabien Roussel",
    "Emmanuel Macron",
    "Jean Lassalle",
    "Marine Le Pen",
    "Éric Zemmour",
    "Jean-Luc Mélenchon",
    "Anne Hidalgo",
    "Yannick Jadot",
    "Valérie Pécresse",
    "Philippe Poutou",
    "Nicolas Dupont-Aignan"
  ];

  doEnrich(Tweet tweet) {
    if (tweet.text!.toLowerCase().contains(RegExp("p[eéè]cre"))) {
      tweet.candidat = "pecresse";
    }
  }
}

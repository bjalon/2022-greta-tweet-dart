import 'enrichers.dart';
import 'tweet.dart';

class TweetManager {
  List<Tweet> tweets = [];
  late final CandidatEnricher candidatEnricher;
  late final SentimentEnricher sentimentEnricher;

  TweetManager({CandidatEnricher? candidatEnricher, SentimentEnricher? sentimentEnricher}) {
    this.candidatEnricher = candidatEnricher ?? CandidatEnricher();
    this.sentimentEnricher = sentimentEnricher ?? SentimentEnricher();
  }

  void addTweet(Tweet tweet) {
    doEnrichments(tweet);
    tweets.add(tweet);
  }

  List<Tweet> getTweets() {
    return tweets;
  }

  void doEnrichments(Tweet tweet) {
    candidatEnricher.doEnrich(tweet);
    sentimentEnricher.doEnrich(tweet);
  }
}

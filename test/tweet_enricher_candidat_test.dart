import 'package:test/test.dart';
import 'package:twitter_again/service/tweet.dart';
import 'package:twitter_again/service/tweet_manager.dart';


void main() {
  test(
      "j'ajoute un tweet ne parlant pas d'un candidat, quand je le récupère je constate que le tweet ne parle pas d'un candidat",
      () {
    var tweet1 = Tweet(text: "Mon text", author: "Benjamin", creationDate: "20220323");
    var tweetManager = TweetManager();

    tweetManager.addTweet(tweet1);
    var listTweet = tweetManager.getTweets();
    expect(listTweet[0].candidat, null);
  });
  test(
      "j'ajoute un tweet parlant de candidat Pécresse, quand je le récupère je constate que le tweet parle du candidat pecresse",
          () {
        var tweet1 = Tweet(
            text: "J'ai beaucoup d'affinité en terme artistique avec Valérie Pécresse",
            author: "Benjamin",
            creationDate: "20220323");
        var tweetManager = TweetManager();

        tweetManager.addTweet(tweet1);
        var listTweet = tweetManager.getTweets();
        expect(listTweet[0].candidat, "pecresse");
      });
  test(
      "j'ajoute un tweet parlant de candidat Pécresse en positif, quand je le récupère je constate que le tweet parle du candidat pecresse et positivement",
          () {
        var tweet1 = Tweet(
            text: "J'aime Valérie Pécresse",
            author: "Benjamin",
            creationDate: "20220323");
        var tweetManager = TweetManager();

        tweetManager.addTweet(tweet1);
        var listTweet = tweetManager.getTweets();
        expect(listTweet[0].sentiment, "positif");
      });
}

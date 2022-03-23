import 'package:test/test.dart';

import '../bin/tweet.dart';
import '../bin/tweet_manager.dart';

void main() {
  test('Je veux pouvoir ajouter un tweet et le récupérer ensuite', () {
    var tweet1 = Tweet(text: "Mon text", author: "Benjamin", creationDate: "20220323");
    var tweetManager = TweetManager();
    var listTweet = tweetManager.getTweets();
    expect(listTweet.length, 0);

    tweetManager.addTweet(tweet1);
    listTweet = tweetManager.getTweets();
    expect(listTweet.length, 1);
  });
}



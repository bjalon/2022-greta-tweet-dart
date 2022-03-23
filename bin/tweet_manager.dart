import 'tweet.dart';

class TweetManager {
  List<Tweet> tweets = [];

  void addTweet(Tweet tweet) {
    tweets.add(tweet);
  }

  List<Tweet> getTweets() {
    return tweets;
  }

}

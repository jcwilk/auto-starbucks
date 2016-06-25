Auto Starbucks
============

A silly tool built out of annoyance at Starbucks.

Every 30 minutes they force you to get redirected to auth to login again, which just requires pushing a button surrounded by javascript garbage just to try to force you to watch 5 seconds of ads...

...so why not write a script to do it! If your machine has never used WiFi at starbucks before then you'll have to log in once from any browser, just use facebook or whatever, from then on I think it ties your login to your machine's hardware address indefinitely or for months so you should only need to use this script moving forward. This script only covers the "Give Me Wi-Fi" button, not the login. If you're seeing it unable to find the Wi-Fi button over and over then it's likely requiring you to login first... Or your Starbucks behaves differently from mine (I'm in Singapore).

I anticipate that the turnaround time between getting cutoff and the script detecting it and reactivating it is probably on average ~15-20 seconds, you could shorten that with more aggressive timings but I left it a bit long to prevent it from being too spammy since that delay is fine for my purposes (intermittent programming googling while working).

Usage
----------

```
bundle install
bundle exec ./do_auth.rb
```

Just let it run and it will use craigslist as a baseline to detect when it's getting cut off, then reconnect automatically with a bit of output to notify about it.

Contributing
----------

Really? Well if you're that bored then sure, send a PR. If you don't know what that is I can't help you :'(

Auto Starbucks
============

A silly tool built out of annoyance at Starbucks.

Every 30 minutes they force you to get redirected to auth to login again, which just requires pushing a button surrounded by javascript garbage just to try to force you to watch 5 seconds of ads...

...so why not write a script to do it! This presumably requires you to log in once... maybe specifically from chrome? I don't really care it's just a junky script.

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

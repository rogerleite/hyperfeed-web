# Web Adapter for Hyperfeed

If you want an entry point web for use [hyperfeed](https://github.com/gkato/hyperfeed).

To install and run:

```
$ git clone
$ bundle install
$ PORT=4567 foreman start
```

Example:

```
$ curl http://localhost:4567/feeds?url=http://feeds.feedburner.com/contigo/noticias/rss
```

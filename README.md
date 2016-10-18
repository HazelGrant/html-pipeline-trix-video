## HTML::Pipeline Trix Video

This project is intended to provide a filter that will take
[Trix](https://github.com/basecamp/trix)-produced content as input, find
`<figure>` tags that hold onto image previews taken from YouTube or Vimeo
videos, and convert those into raw YouTube or Vimeo video URLs.

The intention is that this returned URL can then be filtered through
[html-pipeline-vimeo](https://github.com/dlackty/html-pipeline-vimeo) and
[html-pipeline-youtube](https://github.com/st0012/html-pipeline-youtube) in
order to display embedded videos in Trix-produced content.

This is based off of the work-flow suggested in Trix's [Issue
206](https://github.com/basecamp/trix/issues/206).

### Installation

Add this line to your application's Gemfile:

```ruby
gem 'html-pipeline'
gem 'html-pipeline-trix-video'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install html-pipeline-trix-video
```

### Usage

You can add `HTML::Pipeline::TrixVideoFilter` into your pipeline like this:

```ruby
pipeline = HTML::Pipeline.new [
  HTML::Pipeline::TrixVideoFilter,
  HTML::Pipeline::VimeoFilter
]

result = pipeline.call(text)
```

See [html-pipeline](https://github.com/jch/html-pipeline).

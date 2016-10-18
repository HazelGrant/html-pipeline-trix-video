## HTML::Pipeline Trix Video

A html-pipeline filter that converts a Trix-compliant YouTube or Vimeo preview
figure into a URL.

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

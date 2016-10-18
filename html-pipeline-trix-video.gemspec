# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'html/pipeline/trix_video/version'

Gem::Specification.new do |spec|
  spec.name = "html-pipeline-trix-video"
  spec.version = HTML::Pipeline::TrixVideo::VERSION
  spec.authors = ["Wendy Randquist"]
  spec.email = ["wendybeth010@gmail.com"]

  spec.summary = %q{An HTML::Pipeline filter converting Trix-compliant YouTube or Vimeo preview figures into URLs}
  spec.description = spec.summary
  spec.homepage = "https://github.com/wendybeth/html-pipeline-trix-video"
  spec.license = "MIT"

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test/features)/}) }

  spec.add_dependency "html-pipeline", "~> 2.0"

  spec.add_development_dependency "awesome_print"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end

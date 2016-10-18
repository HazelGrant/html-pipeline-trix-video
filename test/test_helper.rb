require "bundler/setup"
require "minitest/autorun"

require "./lib/html/pipeline/trix_video"

module TestHelpers

  def assert_equal_html(expected, actual)
    assert_equal equalized_html(expected), equalized_html(actual)
  end

  def equalized_html(html)
    Nokogiri::HTML::DocumentFragment.parse(html).to_hash
  end

end

Minitest::Test.send(:include, TestHelpers)

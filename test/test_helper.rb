require "bundler/setup"
require "minitest/autorun"

require "./lib/html/pipeline/trix_video"

module TestHelpers

end

Minitest::Test.send(:include, TestHelpers)

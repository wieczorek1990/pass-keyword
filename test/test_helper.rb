# frozen_string_literal: true

dir = __dir__
$LOAD_PATH.unshift File.expand_path("../lib", dir) unless dir.nil?

require "pass_keyword"
require "minitest/autorun"

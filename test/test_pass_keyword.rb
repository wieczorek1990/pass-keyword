# frozen_string_literal: true

require "test_helper"

class TestPassKeyword < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::PassKeyword::VERSION
  end

  def test_it_does_pass
    assert_nil Kernel.pass
  end
end

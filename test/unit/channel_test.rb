require 'test_helper'

class ChannelTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Channel.new.valid?
  end
end

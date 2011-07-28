require 'test_helper'

class ClipTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Clip.new.valid?
  end
end

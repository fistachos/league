require 'test_helper'

class MatchTest < ActiveSupport::TestCase
  setup do
    @match = FactoryGirl.build(:match)
  end

  test "match saves successfully" do
    assert @match.save
  end
end

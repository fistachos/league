require 'test_helper'

class MatchTest < ActiveSupport::TestCase
  setup do
    @match_score = FactoryGirl.build(:match_score)
  end

  test "match score saves successfully" do
    assert @match_score.save
  end
end

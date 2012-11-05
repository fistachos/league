require 'test_helper'

class MatchScoreTest < ActiveSupport::TestCase
  test "match score saves successfully" do
    assert FactoryGirl.create(:match_score)
  end

  test "won scope returns match scores with score 10" do
    lost_score = FactoryGirl.create(:match_score)
    won_score  = FactoryGirl.create(:match_score, score: 10)
    assert_equal [won_score], MatchScore.won
  end
end

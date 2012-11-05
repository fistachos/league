require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  test "team saves successfully" do
    assert FactoryGirl.create(:team)
  end

  test "has many match scores" do
    team = FactoryGirl.create(:team)
    score = FactoryGirl.create(:match_score, team: team)
    assert_equal team.match_scores, [score]
  end

  test "has many matches" do
    team = FactoryGirl.create(:team)
    score = FactoryGirl.create(:match_score, team: team)
    match = FactoryGirl.create(:match, match_scores: [score])
    assert_equal team.matches, [match]
  end

  test "points returns amount of won matches" do
    team = FactoryGirl.create(:team)
    FactoryGirl.create(:match)
    FactoryGirl.create(:match)
    MatchScore.won.first.update_attribute(:team_id, team.id) #this is so, so wrong...
    assert_equal 1, team.points
  end

  test "goals_scored returns amount of goals scored" do
    team = FactoryGirl.create(:team)
    FactoryGirl.create(:match)
    MatchScore.won.first.update_attribute(:team_id, team.id)
    assert_equal 10, team.goals_scored
  end

  test "goals_lost returns amount of goals lost" do
    team = FactoryGirl.create(:team)
    FactoryGirl.create(:match)
    MatchScore.lost.first.update_attribute(:team_id, team.id)
    assert_equal 6, team.goals_scored
  end
end

require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  setup do
    @team = FactoryGirl.build(:team)
  end

  test "team saves successfully" do
    assert @team.save
  end
end

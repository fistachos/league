FactoryGirl.define do
  sequence :team_name do |n|
    "Team #{n}"
  end

  sequence :player_name do |n|
    "Player #{n}"
  end

  factory :team do
    name    { generate(:team_name)   }
    player1 { generate(:player_name) }
    player2 { generate(:player_name) }
  end
end


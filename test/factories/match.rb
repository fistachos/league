FactoryGirl.define do
  factory :match do
    after(:create) do |match|
      FactoryGirl.create(:match_score, match: match, score: 10)
      FactoryGirl.create(:match_score, match: match)
    end
  end
end
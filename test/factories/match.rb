FactoryGirl.define do
  factory :match do
    after(:create) do |match|
      #this is terrible, but good solution at the moment
      FactoryGirl.create(:match_score, match: match)
      FactoryGirl.create(:match_score, match: match)
    end
  end
end
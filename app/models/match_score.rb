class MatchScore < ActiveRecord::Base
  attr_accessible :team_id, :score

  belongs_to :match
  belongs_to :team

  scope :won, where(score: 10)
  scope :lost, where("score < 10")

  validates :team_id, :presence => true
  validates :score, :presence => true,
                    :numericality => {
                      :only_integer => true,
                      :greater_than_or_equal_to => 0,
                      :less_than_or_equal_to => 10
                    }
end

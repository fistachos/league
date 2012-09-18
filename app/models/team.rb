class Team < ActiveRecord::Base
  attr_accessible :name, :player1, :player2

  validates :player1, :presence => true
  validates :player2, :presence => true

  scope :ordered, order("name")

  def points
  	points=0
  	Match.all.each do |match|
  		if match.winner == self
  			points+=1
  		end
  	end
  	points
  end

  def matches
    matches=0
    Match.all.each do |match|
      if match.first_team == self || match.second_team == self
        matches+=1
      end
    end
    matches
  end

  def self.get_sorted
  	Team.all.sort_by { |t| -t.points }
	end
end

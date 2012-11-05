#OMFG

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

  def goals_scored
    points=0
    Match.all.each do |match|
      if match.first_team == self
        points+=match.first_score
      end
      if match.second_team == self
        points+=match.second_score
      end
    end
    points
  end

  def goals_losed
    points=0
    Match.all.each do |match|
      if match.first_team == self
        points+=match.second_score
      end
      if match.second_team == self
        points+=match.first_score
      end
    end
    points
  end

  def matches_count
    matches.length
  end

  def matches
    matches = []
    Match.all.each do |match|
      if match.first_team == self || match.second_team == self
        matches << match
      end
    end
    matches
  end

  def matches_played(team)
    matches = self.matches
    matches.delete_if { |match| !(match.first_team==team || match.second_team==team) }
  end

  def self.get_sorted
  	Team.all.sort { |t1,t2|
      result = 0
      if t1.points!=t2.points
        result = t1.points <=> t2.points
      else
        if t1.goals_scored!=t2.goals_scored
          result = t1.goals_scored <=> t2.goals_scored
        else
          if t1.goals_losed!=t2.goals_losed
            result = -(t1.goals_losed <=> t2.goals_losed)
          else
            if t1.matches_count!=t2.matches_count
              result = -(t1.matches <=> t2.matches)
            end
          end
        end
      end
      -result
     }
	end
end

class News < ActiveRecord::Base
  attr_accessible :fulltext, :title, :template, :match_id

  scope :ordered, order("created_at desc")
  belongs_to :match

  delegate :first_team, :second_team, :first_score, :second_score,:winner, :to => :match 
end

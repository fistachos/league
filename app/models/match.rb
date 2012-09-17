class Match < ActiveRecord::Base
  attr_accessible :date, :match_scores_attributes
  has_many :match_scores
  has_one :news
  accepts_nested_attributes_for :match_scores

  after_initialize :build_scores
  after_create :create_news


  def build_scores
  	if match_scores.size < 2
  		match_scores.build
		  match_scores.build
    end
  end

  def create_news
    News.create(:template => 'match', :match_id => id)
  end
end

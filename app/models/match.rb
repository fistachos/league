class Match < ActiveRecord::Base
  attr_accessible :date, :match_scores_attributes

  has_many :match_scores
  has_one :news
  accepts_nested_attributes_for :match_scores

  after_create :create_news

  scope :ordered, order("date desc")

  def build_scores
    if match_scores.size < 2
      match_scores.build
      match_scores.build
    end
  end

  def create_news
    News.create(:template => 'match', :match_id => id)
  end

  def first_team
    match_scores[0].team
  end

  def second_team
    match_scores[1].team
  end

  def first_score
    match_scores[0].score
  end

  def second_score
    match_scores[1].score
  end

  def winner
    match_scores[0].score > match_scores[1].score ? first_team : second_team
  end
end

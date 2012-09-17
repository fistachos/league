class News < ActiveRecord::Base
  attr_accessible :fulltext, :title, :template, :match_id

  scope :ordered, order("created_at desc")
  belongs_to :match
end

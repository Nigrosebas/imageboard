class Category < ActiveRecord::Base
  attr_accessible :count_topic, :description, :name
  has_many :topics
end

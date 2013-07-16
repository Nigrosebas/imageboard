class Topic < ActiveRecord::Base
  attr_accessible :category_id, :count_post, :first_post, :title, :posts_attributes
  has_many :posts
  belongs_to :category
  accepts_nested_attributes_for :posts
end

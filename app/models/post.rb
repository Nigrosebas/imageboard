class Post < ActiveRecord::Base
  attr_accessible :content, :img, :password, :topic_id
  belongs_to :topic 
end

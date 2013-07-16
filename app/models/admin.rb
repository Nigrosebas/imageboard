class Admin < ActiveRecord::Base
  attr_accessible :password, :privilege, :user
end

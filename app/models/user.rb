class User < ActiveRecord::Base
  has_many :quests
  has_many :nudges
end

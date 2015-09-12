class User < ActiveRecord::Base
  has_many :quests
  has_many :nudges
  belongs_to :demographic
  has_many :friendships
  has_many :friends, through: :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user
end


has_many :patients, through: :appointments

class User < ActiveRecord::Base
  has_many :quests
  has_many :nudges
  belongs_to :demographic
  has_many :friendships
  has_many :friends, through: :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user
  validates :username, uniqueness: true, presence: true
  validates :birthyear, presence: true
  validates :email, uniqueness: true, presence: true
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create
  validates :gender, presence: true
  validates :zipcode, presence: true
end




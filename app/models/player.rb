class Player < ActiveRecord::Base
  enum orientation: [ :likes_female, :likes_male, :likes_both ]
  enum gender: [ :female, :male]
  validates :facebookid, presence: true, uniqueness: true
  validates :name, presence: true, length: { maximum: 60 }
  validates :gender, presence: true
  validates :age, presence: true
  validates :location, presence: true
  validates :orientation, presence: true
end

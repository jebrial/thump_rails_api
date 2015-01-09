class Player < ActiveRecord::Base
  enum gender: [ :female, :male]
  validates :facebookid, presence: true, uniqueness: true
  validates :name, presence: true, length: { maximum: 60 }
  validates :gender, presence: true
  validates :age, presence: true
  validates :location, presence: true
  validates :likes_men, presence: true
  validates :likes_women, presence: true
end

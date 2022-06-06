class Log < ApplicationRecord

  validates :content, presence: true
  validates :day,     presence: true
  validates :distance,presence: true
  validates :time,    presence: true
  

  belongs_to :user
  has_one_attached :image
end

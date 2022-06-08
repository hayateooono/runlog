class Log < ApplicationRecord

  validates :content, presence: true, length: {maximum: 1000 }
  validates :day,     presence: true
  validates :distance,presence: true,numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 200 }
  validates :time,    presence: true
  validates :place, length: { maximum: 50 }

  belongs_to :user
  has_one_attached :image
end

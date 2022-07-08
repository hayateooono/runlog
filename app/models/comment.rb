class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :log

  validates :content presence :true
end

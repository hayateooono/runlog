class Log < ApplicationRecord


  with_options presence: true do
    validates :title,length: {maximum: 40 }
    validates :day
    validates :distance,numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 200,message:"は半角数字で正しく入力してください" },
    format: { with: /\A[0-9]+\z/  }
    validates :hour_time,numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 23,message:"は半角数字で正しく入力してください" },
    format: { with: /\A[0-9]+\z/  }
    validates :min_time,numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 59,message:"は半角数字で正しく入力してください" },
    format: { with: /\A[0-9]+\z/  }
    validates :sec_time,numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 59,message:"は半角数字で正しく入力してください" },
    format: { with: /\A[0-9]+\z/  }
    validates :image
    validates :content,length: {maximum: 1000 }
    validates :user_id
  end
    validates :place, length: { maximum: 40 }

  belongs_to :user
  has_many :comments
  has_one_attached :image
end

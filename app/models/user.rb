class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :nickname, presence: true,length: { maximum: 50 }
         validates :profile, presence: true,length: { maximum: 160 }
         validates :hour_time, numericality: { greater_than_or_equal_to: 01, less_than_or_equal_to: 23 ,message:"は半角数字で正しく入力してください"},
         format: { with: /\A[0-9]+\z/  }
         validates :min_time, numericality: { greater_than_or_equal_to: 00, less_than_or_equal_to: 59 ,message:"は半角数字で正しく入力してください"},
         format: { with: /\A[0-9]+\z/ }
         validates :sec_time, numericality: { greater_than_or_equal_to: 00, less_than_or_equal_to: 59 ,message:"は半角数字で正しく入力してください"},
         format: { with: /\A[0-9]+\z/}
         validates :birth_day,presence: true

         has_many :logs
end

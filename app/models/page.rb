class Page < ApplicationRecord
  belongs_to :journal
  has_many :events, dependent: :destroy
  has_many :tasks, dependent: :destroy
  has_many :items, dependent: :destroy
  has_many :habits, dependent: :destroy
  has_many :streaks, through: :habits
end

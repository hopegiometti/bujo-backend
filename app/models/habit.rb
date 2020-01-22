class Habit < ApplicationRecord
  belongs_to :page
  has_many :streaks, dependent: :destroy
end

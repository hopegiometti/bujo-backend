class Page < ApplicationRecord
  belongs_to :journal
  has_many :events, dependent: :destroy
  has_many :tasks, dependent: :destroy
end

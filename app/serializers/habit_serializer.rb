class HabitSerializer < ActiveModel::Serializer
  attributes :id, :name, :streaks
  has_one :page
  has_many :streaks
end

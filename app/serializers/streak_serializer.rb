class StreakSerializer < ActiveModel::Serializer
  attributes :id, :date
  has_one :habit
end

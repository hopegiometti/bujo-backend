class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :attended, :page_id
end

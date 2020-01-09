class PageSerializer < ActiveModel::Serializer
  attributes :id, :month, :layout, :journal_id
  has_many :events
end

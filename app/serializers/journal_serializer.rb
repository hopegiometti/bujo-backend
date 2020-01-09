class JournalSerializer < ActiveModel::Serializer
  attributes :id, :year, :user_id
  # has_many :pages
end

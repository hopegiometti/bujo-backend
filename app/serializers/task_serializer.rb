class TaskSerializer < ActiveModel::Serializer
  attributes :id, :description, :date, :completed
end

class LociSerializer < ActiveModel::Serializer
  attributes :id, :name, :item
  belongs_to :palace
end

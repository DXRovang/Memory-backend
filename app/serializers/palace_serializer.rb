class PalaceSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :locis
end

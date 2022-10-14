class MedicineSerializer < ActiveModel::Serializer
  attributes :id,:name,:brand,:quantity,:price,:expiry
end

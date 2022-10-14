class DoctorsSerializer < ActiveModel::Serializer
  attributes :id,:first_name,:last_name,:username, 
  :password,:specialist,:qualification,:full_name

  has_many:appointments,serializer:AppointmentSerializer
  has_many:users,serializer:UserSerializer

  def full_name
    object.first_name + "" + object.last_name
  end 
end


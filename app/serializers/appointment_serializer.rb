class AppointmentSerializer < ActiveModel::Serializer
  attributes :id,user_id,:doctor_id,:time,:complaints

  def doctor
    object.doctor.full_name
  end 
  def user
    object.user.full_name
  end
end

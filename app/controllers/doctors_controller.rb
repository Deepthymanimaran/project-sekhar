class DoctorsController < ApplicationController
    def index
      doctor = Doctor.all
      render json: {success:true, doctor:doctor}
    end
  
    def create
      doctor = Doctor.create(doctor_params)
      render json: {success:true, 
      data: ActiveModelSerializers::SerializableResource.new(doctor, serializer: DoctorSerializer),
         doctor:doctor}
    end
  
    def show
      doctor = Doctor.find_by(id:params[:id])
      render json: {success:true, doctor:doctor}
    end
  
  
    def update
      doctor =Doctor.find_by(id:params[:id])
         doctor.update(doctor_params)
         render json: {success:false,doctor:doctor}
    end
  
    def destroy
      doctor = Doctor.find(params[:id])
         if doctor.present?
         doctor.destroy
         render json: {success:true,message:"successfully deleted"}
         else
         render json: {success:false,message:"unable to delete"}
    end
  end
  
  private
  def doctor_params
  params.required(:doctor).permit(:first_name,:last_name,:username,:password,:specialist,:qualification)
  end
  end
  
  
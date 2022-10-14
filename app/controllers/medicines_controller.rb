class MedicinesController < ApplicationController
    def index
        medicines = Medicine.all
        array_response(medicines, MedicineSerializer, "Medicines list")
end


def create
    medicine =Medicine.create(medicine_params)
    if medicine.errors.empty?
        success_response(medicine,MedicineSerializer, "Medicine created successfully")
    else
        failure_response(medicine.errors)
    end
end

def show
    if medicine.present?
        success_response(medicine, MedicineSerializer,"")
    else
        failure_response("Unable find the medicine")
    end
end

def update
    if medicine.present?
        medicine.update(medicine_params)
        success_response(medicine, MedicineSerializer, "Updated successfully")
    else 
        failure_response("Unable to update")
    end
end 

def destroy
    if medicine.present?
        medicine.destroy
        render json: {success: true, message:"Deleted successfully"}
    else 
        failure_response("Unable to delete")
    end
end

private

def medicine_params
    params.required(:medicine).permit(:name,:brand,:quantity,:price,:expiry)
end
end


    

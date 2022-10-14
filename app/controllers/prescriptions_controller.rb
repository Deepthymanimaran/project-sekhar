class PrescriptionsController < ApplicationController
    def create
        prescription = Prescription.create(prescription_params)
        failure_response
    end

    def show
    end

    private
    def prescription_params
        params.require(:prescription).permit(:doctor_id, :user_id,
        :notes)
    end
end

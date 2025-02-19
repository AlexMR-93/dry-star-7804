class DoctorsController < ApplicationController
  def show
    @doctor = Doctor.find(params[:id])
  end

  def destroy
    @doctor = Doctor.find(params[:id]).destroy
    redirect_to(doctor_path(@doctor.id))
  end
end

class DosesController < ApplicationController
  def index
    @doses = Doses.all
  end

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.save
  end

  def show
    @dose = Dose.find(dose_params)
  end

  def destroy
    @dose = Dose.find(dose_params[:id])
    @dose.destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end
end

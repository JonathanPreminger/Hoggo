class AssurancesController < ApplicationController
  def create
    @assurance = Assurance.create(assurance_params)
    @assurance.save
      flash[:success] = 'Assurance created'
      if @assurance.type == "Immovable"
        redirect_to assurances_immovable_all_path
      elsif @assurance.type == "Car"
        redirect_to assurances_car_all_path
      elsif @assurance.type == "Agricultural"
        redirect_to assurances_agricultural_all_path
      end
  end

  def new
    @assurance = Assurance.new(params[:assurance])
  end

  def index
    @assurances = Assurance.all
  end

  def immovable_all
    @immovables = Assurance.immovable.all
  end

  def agricultural_all
    @agriculturals = Assurance.agricultural.all
  end

  def car_all
    @cars = Assurance.car.all
  end

  private

  def assurance_params
    params.require(:assurance).permit(:email, :social_reason, :siret, :siren, :naf_code, :phone_number, :annual_incomes, :phone_number, :type, :dry_zone, :culture_type, :car_model, :licence_points, :registration_number, :building_size, :floor_number)
  end

end

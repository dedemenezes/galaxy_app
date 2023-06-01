class AlienPowersController < ApplicationController
  def new
    @alien = Alien.find(params[:alien_id])
    @alien_power = AlienPower.new
  end

  def create
    @alien = Alien.find(params[:alien_id])
    @powers = Power.where(id: params[:alien_power][:power])
    @powers.each do |power|
      @alien_power = AlienPower.new(alien: @alien, power: power)
      @alien_power.save
    end
    if @alien_power.save
      redirect_to planet_path(@alien.planet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def alien_power_params
    params.require(:alien_power).permit(power: [])
  end
end

class AlienPowersController < ApplicationController
  def new
    @alien = Alien.find(params[:alien_id])
    @alien_power = AlienPower.new
  end

  def create
    @alien_power = AlienPower.new(alien_power_params)
    @alien = Alien.find(params[:alien_id])
    @alien_power.alien = @alien
    if @alien_power.save
      redirect_to planet_path(@alien.planet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def alien_power_params
    params.require(:alien_power).permit(:power_id)
  end
end

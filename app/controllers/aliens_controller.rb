class AliensController < ApplicationController
  # def new
  #   # provide the instances to build the form
  #   @alien = Alien.new
  #   @planet = Planet.find(params[:planet_id])
  # end

  def create
    @alien = Alien.new(alien_params)
    # assing the Planet to this new Alien
    @planet = Planet.find(params[:planet_id])
    @alien.planet = @planet
    if @alien.save
      redirect_to planet_path(@planet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @alien = Alien.find(params[:id])
    @alien.destroy
    redirect_to planet_path(@alien.planet)
  end

  private

  def alien_params
    params.require(:alien).permit(:name, :image_url)
  end
end

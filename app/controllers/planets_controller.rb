class PlanetsController < ApplicationController
  def show
    @planet = Planet.find(params[:id])
    @alien = Alien.new # used to build the form
  end
end

class BreedsController < ApplicationController
  def index
    @breeds = Breed.all
  end

  def show
    @breeds = Breed.find(params[:id])
    @sub_breeds = @breeds.sub_breeds.all
    @deals = @breeds.deals.all
  end
end

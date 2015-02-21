class BeersController < ApplicationController
  before_action :set_beer, only: [:update, :edit, :show]
    def index
      @beers=Beer.all
    end

    def new
      @beer=Beer.new
    end

    def create
      @beer=Beer.new(beer_params)
      if @beer.save
        flash[:notice]="You've successfully added a Beer!"
        redirect_to beer_path(@beer)
      else
        render :new
      end
    end

    def show
    end

    def edit
    end

    def update
      if @beer.update(beer_params)
        flash[:notice]= "You've successfully updated a Beer!"
        redirect_to beer_path(@beer)
      else
        render :edit
      end
    end

    def destroy
      beer=Beer.find(params[:id])
      if beer.destroy
        flash[:notice]= "You Deleted a Beer :("
        redirect_to beers_path
      end
    end

    private

    def set_beer
      @beer=Beer.find(params[:id])
    end

    def beer_params
      params.require(:beer).permit(:name, :description, :ibu, :abv)
    end

  end

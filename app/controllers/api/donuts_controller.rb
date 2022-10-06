class Api::DonutsController < ApplicationController
  def index
    @donuts = Donut.all
    render 'index.json.jb'
  end

  def show
    @donut = Donut.find_by(id: params[:id])
    render 'show.json.jb'
  end
  
end

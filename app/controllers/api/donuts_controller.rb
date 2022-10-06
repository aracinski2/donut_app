class Api::DonutsController < ApplicationController
  def index
    @donuts = Donut.all
    render 'index.json.jb'
  end

  def show
    @donut = Donut.find_by(id: params[:id])
    render 'show.json.jb'
  end
  
  def create
    @donut = Donut.new(
      name: params[:name],
      coating: params[:coating],
      shape: params[:shape]
    )
    @donut.save!
    render 'show.json.jb'
  end

  def update
    @donut = Donut.find_by(id: params[:id])
    @donut.name = params[:name]
    @donut.coating = params[:coating]
    @donut.shape = params[:shape]

    @donut.save!
    render 'show.json.jb'
  end

  def delete
    @donut = Donut.find_by(id: params[:id])
    @donut.delete
    render json: {message: "Donut Deleted"}
  end
end
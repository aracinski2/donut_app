class Api::DonutsController < ApplicationController
  def index
    @donuts = Donut.all
    render 'index.json.jb'
  end
end

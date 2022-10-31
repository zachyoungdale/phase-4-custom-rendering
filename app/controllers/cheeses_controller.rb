class CheesesController < ApplicationController

  # GET /cheeses
  def index
    cheeses = Cheese.all
    render json: cheeses, only: [:id, :name, :price, :is_best_seller], methods: [:summary]
  end

  # GET /cheeses/:id
  def show
    cheese = Cheese.find_by(id: params[:id])
    render json: cheese, except: [:created_at, :updated_at], methods: [:summary]
  end

end

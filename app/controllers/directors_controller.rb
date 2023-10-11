class DirectorsController < ApplicationController
  def new
    @director = Director.new
  end

  def index
    @directors = Director.order(created_at: :desc)

    respond_to do |format|
      format.json do
        render json: @movies
      end

      format.html
    end
  end

  def show
    @director = Director.find(params.fetch(:id))
  end

  def create
    @director = Director.new
  end

  def update
  end

  def edit
  end

  def destroy
  end
end

class BillboardsController < ApplicationController
  before_action :set_billboard, only: [:show, :destroy]

  def index
    @billboards = Billboard.all
  end

  def show
  end

  def new
    @billboard = Billboard.new
  end

  def create
    @billboard = Billboard.new(user_params)

    if @billboard.save
      redirect_to @billboard
    else
      render :new
    end
  end

  def destroy
    @billboard.destroy
    redirect_to billboards_path
  end

  private
    def set_billboard
      @billboard = Billboard.find(params[:id])
    end

    def billboard_params
      params.require(:billboard).permit
    end
end


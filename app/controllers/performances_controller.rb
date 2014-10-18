class PerformancesController < ApplicationController
  before_action :set_performance, only: [:show, :edit, :update, :destroy]

  def index
    @performances = Performance.all
    respond_with(@performances)
  end

  def show
    respond_with(@performance)
  end

  def new
    @performance = Performance.new
    respond_with(@performance)
  end

  def edit
  end

  def create
    @performance = Performance.new(performance_params)
    @performance.save
    respond_with(@performance)
  end

  def update
    @performance.update(performance_params)
    respond_with(@performance)
  end

  def destroy
    @performance.destroy
    respond_with(@performance)
  end

  private
    def set_performance
      @performance = Performance.find(params[:id])
    end

    def performance_params
      params.require(:performance).permit(:start_time, :end_time, :location, :show)
    end
end

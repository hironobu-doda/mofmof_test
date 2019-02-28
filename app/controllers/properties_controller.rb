class PropertiesController < ApplicationController

before_action :set_property, only: [:show, :edit, :update, :destroy]

before_action :set_nearest_station, only: [:show, :edit, :update, :destroy]

  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
    2.times { @property.nearest_stations.build }
  end

  def create
    @property = Property.create(property_params)
    if @property.save
      redirect_to properties_path, notice: "作成しました"
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @property.update(update_property_params)
      redirect_to properties_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  def destroy
    @property.destroy
    redirect_to properties_path, notice: "削除しました"
  end

  private

  def property_params
    params.require(:property).permit(:name, :money, :address, :age, :content, nearest_stations_attributes: [:route, :station, :minute])
  end

  def update_property_params
    params.require(:property).permit(:name, :money, :address, :age, :content, nearest_stations_attributes: [:route, :station, :minute, :_destroy, :id])
  end

  def set_property
    @property = Property.find(params[:id])
  end

  def set_nearest_station
    @nearest_station = NearestStation.find(params[:id])
  end

end

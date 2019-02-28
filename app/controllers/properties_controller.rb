class PropertiesController < ApplicationController

before_action :set_property, only: [:show, :edit, :update, :destroy]

before_action :set_nearest_station, only: [:show, :edit, :update, :destroy]

  def index
    @properties = Property.all
  end

  def new
    if params[:back]
      @property = Property.new(property_params)
      # @property.nearest_stations.build

   else
      @property = Property.new
      2.times { @property.nearest_stations.build }
   end

    #  if params[:back]
    #    @nearest_station = NearestStation.new(property_params)
    # else
    #    @nearest_station = NearestStation.new
    # end
  end

  def create
    @property = Property.create(property_params)
    if @property.save
      redirect_to properties_path, notice: "作成しました"
    else
      render 'new'
    end

    # @nearest_station = NearestStation.create(nearest_station_params)
    # if @nearest_station.save
    #   redirect_to properties_path, notice: "作成しました"
    # else
    #   render 'new'
    # end
  end

  def show
  end

  def edit
  end

  def update
    if @property.update(property_params)
      redirect_to properties_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  def destroy
    @property.destroy
    redirect_to properties_path, notice: "削除しました"
  end

  def confirm
    @property = Property.new(property_params)
    # @property.nearest_stations.build

    # render :new if @property.invalid?

    # @nearest_station = NearestStation.new(property_params)
    # render :new if @nearest_station.invalid?
  end

  private

  def property_params
    params.require(:property).permit(:name, :money, :address, :age, :content, nearest_stations_attributes: [:route, :station, :minute])

  end

  # def nearest_station_params
  #   params.require(:nearest_station).permit(:route, :station, :minute)
  # end

  def set_property
    @property = Property.find(params[:id])
  end

  def set_nearest_station
    @nearest_station = NearestStation.find(params[:id])
  end

end

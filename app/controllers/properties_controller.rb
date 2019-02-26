class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
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
    @property = Property.find(params[:id])
  end
  #
  # def edit
  # end
  #
  # def destroy
  # end

  private

  def property_params
    params.require(:property).permit(:name, :money, :address, :age, :content)
  end

end

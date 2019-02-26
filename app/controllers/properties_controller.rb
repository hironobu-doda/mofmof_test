class PropertiesController < ApplicationController
  def index
  end

  def new
    @property = Property.new
  end

  def create
    Property.create(property_params)
    redirect_to new_property_path
  end
  #
  # def edit
  # end
  #
  # def show
  # end
  #
  # def destroy
  # end

  private

  def property_params
    params.require(:property).permit(:name, :money, :address, :age, :content)
  end

end

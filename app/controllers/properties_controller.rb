class PropertiesController < ApplicationController

before_action :set_property, only: [:show, :edit, :update, :destroy]

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

  private

  def property_params
    params.require(:property).permit(:name, :money, :address, :age, :content)
  end

  def set_property
    @property = Property.find(params[:id])
  end

end

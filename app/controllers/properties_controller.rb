class PropertiesController < ApplicationController
  def index
  end

  def new
    @property = Property.new
  end

  def create
    Property.create(name:params[:property][:name],
                    money:params[:property][:money],
                    address:params[:property][:address],
                    age:params[:property][:age],
                    content:params[:property][:content])
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

end

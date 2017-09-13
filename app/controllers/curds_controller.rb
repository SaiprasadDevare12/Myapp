class CurdsController < ApplicationController
  
  def index
    @title =" VIEW STUDENT DETAIL PAGE"
    @view = Curd.all
  end 

  def create
    @insertion = Curd.new(data_insert)
    if @insertion.save
       redirect_to action:"index"
    else
       render action:"new"
     end
  end

  def new

  end
  
  def edit

  end

  def show
   
  end 

  def update

  end

  def destroy

  end

  def data_insert
    params.require(:curd).permit(:adno, :name, :gender, :standard)
  end
end
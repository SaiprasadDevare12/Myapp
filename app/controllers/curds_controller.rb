class CurdsController < ApplicationController
  
  def index
    @title =" VIEW STUDENT DETAILS PAGE"
    @view = Curd.all
   end 
 
  def show   
    @view = Curd.find(params[:id])
  end 

  def create
      curd = Curd.new(data_params)

      if curd.save
         redirect_to curds_path(curd)
      else
      	 redirect_to new_curd_path
      end    
  end
  
  def new
     @view = Curd.new
  end

   def edit
   	@view = Curd.find(params[:id])
   end

  def update
     @view = Curd.find(params[:id])
     if @view.update_attributes(data_params)
           redirect_to curds_path
     else
     	   render "edit"
     end
  end

  def destroy
  		@view = Curd.find(params[:id])
  		@view.destroy
  		redirect_to curds_path 
  end

  private
     def data_params
        params.require(:curd).permit(:adno, :name, :gender, :standard)
     end
 
end
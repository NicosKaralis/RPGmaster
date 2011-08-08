class ItemTypesController < ApplicationController
  
  def index
    @item_types = ItemType.find(:all, :order => "name ASC")
  end

  def new
    @item_type = ItemType.new
  end

  def edit
    @item_type = ItemType.find(params[:id])
  end
  
  def create
    @item_type = ItemType.new(params[:item_type])

    if @item_type.save
      flash[:success] = 'Item type was successfully created.'
      redirect_to item_types_url
    else
      render :action => "new"
    end
  end
  
  def update
    @item_type = ItemType.find(params[:id])

    if @item_type.update_attributes(params[:item_type])
      flash[:success] = 'Item type was successfully updated.'
      redirect_to item_types_url
    else
      flash[:success] = 'Some errors have been found'
      render :action => "edit"
    end
  end
  
  def destroy
    @item_type = ItemType.find(params[:id])
    @item_type.destroy
    
    flash[:success] = 'Item type was successfully desroyed.'
    redirect_to item_types_url
  end
end

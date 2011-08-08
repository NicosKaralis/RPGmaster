class ItemsController < ApplicationController
  # GET /items
  # GET /items.xml
  def index
    @items = Item.find(:all, :order => "name ASC")
  end
  
  def show
    @item = Item.find(params[:id])
  end
  
  def new
    @item = Item.new
  end
  
  def edit
    @item = Item.find(params[:id])
  end
  
  def create
    @item = Item.new(params[:item])

    if @item.save
      flash[:success] = 'Item was successfully created.'
      redirect_to item_url
    else
      render :action => "new"
    end
  end
  
  def update
    @item = Item.find(params[:id])

    if @item.update_attributes(params[:item])
      flash[:success] = 'Item was successfully updated.'
      redirect_to item_url
    else
      flash[:success] = 'Some errors have been found'
      render :action => "edit"
    end
  end
  
  def destroy
    @item = Item.find(params[:id])
    @item..destroy
    
    flash[:success] = 'Item was successfully desroyed.'
    redirect_to item_url
  end
end

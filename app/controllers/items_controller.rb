class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new 
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to @item
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @item = Item.find(params)
  end

  def update
    @product = Item.find(params)
    if @item.update(item_name)
      redirect_to @item
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def item_params
    params.expect(item: [ :name ])
  end
end

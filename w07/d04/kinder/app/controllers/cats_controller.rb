class CatsController < ApplicationController

  respond_to :json

  def index
    cats = Cat.all
    @cat = cats.sample
    respond_with @cat
  end

  def update
    @cat = Cat.find params[:id]

    if params[:hot_or_not] == 'hot'
      @cat.num_hot += 1
      @cat.save

    elsif params[:hot_or_not] == 'not'
      @cat.num_not += 1
      @cat.save
    end

    respond_with @cat
  end

end

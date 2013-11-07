class CatsController < ApplicationController

  respond_to :json

  def index
    @cats = Cat.all
    respond_with @cats
  end

  def create
    @cat = Cat.create params[cat]
  end

end

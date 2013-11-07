class CatsController < ApplicationController

  respond_to :json

  def index
    cats = Cat.all
    @cat = cats.sample
    respond_with @cat
  end

  def create
    @cat = Cat.create params[cat]
  end

  def update
    @cat = Cat.find params[id]
  end

end

class RefugeesController < ApplicationController
  respond_to :json

  def index
    @refugees = Refugee.all
    respond_with @refugees
  end

  def create
    @refugee = Refugee.create(params[:refugee])
    respond_with @refugee
  end

end

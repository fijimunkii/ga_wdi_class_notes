class SearchController < ApplicationController

  def search
    session[:searches] = Array.new if session[:searches].nil?
  end

  def results
    session[:searches] = Array.new if session[:searches].nil?
    session[:searches] << { Time.now => params[:q] }
  end

end

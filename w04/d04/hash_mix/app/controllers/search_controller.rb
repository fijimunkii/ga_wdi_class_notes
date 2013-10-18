class SearchController < ApplicationController

  def search
    session[:searches] = Array.new if session[:searches].nil?
  end

  def results
    session[:searches] = Array.new if session[:searches].nil?
    session[:searches] << { Time.now => params[:q] }
    @img_url = HTTParty.get("http://imagehash.herokuapp.com/search?&type=json&q=#{URI.encode(params[:q])}")
  end

end

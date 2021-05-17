class GamesController < ApplicationController
  require 'open-uri'
  require 'json'
  
  def new
    charset = Array('A'..'Z')
    @letters = Array.new(10) { charset.sample }
  end

  def score
    @word = params[:word]
    @letters = params[:letters]
  end
end

# class HomeController - Sets up a home page for the app
class HomeController < ApplicationController
  def index
    render layout: 'landing_page'
  end
end

class WebsiteController < ApplicationController

  matestack_app Website::App

  def landing_page
    render Website::Pages::LandingPage
  end


end

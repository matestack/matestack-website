class WebsiteController < ApplicationController

  include Website::Components::Registry

  matestack_app Website::App

  def landing_page
    render Website::Pages::LandingPage
  end


end

class Website::Pages::LandingPage < Matestack::Ui::Page

  def response
    website_hero_section
    website_sub_hero_section
    website_examples_section
    website_features_section
    website_support_section
    website_services_section
    website_team_section
    website_getting_started_section
    website_newsletter_section
  end


end

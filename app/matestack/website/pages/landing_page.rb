class Website::Pages::LandingPage < Matestack::Ui::Page

  def response
    div class: "container" do
      website_hero_section
      website_sub_hero_section
      website_examples_section
      website_features_section
    end
    div class: "container-fluid px-0" do
      website_support_section
      website_addons_section
      website_indepth_guides_section
    end
    div class: "container" do
    end
    div class: "container-fluid px-0" do
      website_services_section
    end
    div class: "container" do
      website_team_section
    end
    div class: "container-fluid px-0" do
      website_getting_started_section
    end
    div class: "container-fluid px-0" do
      website_newsletter_section
    end
  end


end

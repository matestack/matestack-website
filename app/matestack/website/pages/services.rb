class Website::Pages::Services < Matestack::Ui::Page

  def response
    div class: "container" do
      website_hero_section title_1: t("services.hero.title_1"),
        title_2: t("services.hero.title_2"),
        text_1: t("services.hero.text_1"),
        text_2: t("services.hero.text_2"),
        img_url: asset_pack_url('media/images/matestack-indepth-guides.png')
    end
    div class: "container" do
      website_team_section
    end
    div class: "container-fluid px-0" do
      website_services_section
    end
    div class: "container" do
      website_case_studies_section
    end
    div class: "container-fluid px-0" do
      website_getting_started_section
    end
    div class: "container-fluid px-0" do
      website_newsletter_section
    end
  end
end

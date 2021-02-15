class Website::Pages::Bootstrap < Matestack::Ui::Page

  def response
    div class: "container" do
      website_hero_section title_1: t("addons.hero.title_1"),
        title_2: t("addons.hero.title_2"),
        text_1: t("addons.hero.text_1"),
        text_2: t("addons.hero.text_2").html_safe,
        img_url: asset_pack_url('media/images/matestack-addons.png')
    end
    div class: "container mt-5" do
      # website_bootstrap_access_section
      website_bootstrap_preview_section
      website_bootstrap_description_section
      website_bootstrap_features_section
      website_overview_section
      # website_addons_section
      # website_indepth_guides_section
    end
    div class: "container-fluid px-0" do
      website_getting_started_section
    end
    div class: "container-fluid px-0" do
      website_newsletter_section
    end
  end
end

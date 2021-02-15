class Website::Pages::Core < Matestack::Ui::Page

  def response
    div class: "container" do
      website_hero_section title_1: t("landing_page.hero.title_1"),
        title_2: t("landing_page.hero.title_2"),
        title_3: t("landing_page.hero.title_3"),
        text_1: t("landing_page.hero.text_1"),
        text_2: t("landing_page.hero.text_2"),
        img_url: asset_pack_url('media/images/matestack-software.png')
    end
    div class: "container" do
      website_videos_section
      website_features_section
    end
    div class: "container" do
      website_components_examples_section
    end
    async defer: true, id: "deferred-content" do
      div class: "container" do
        website_reactivty_examples_section
        website_spa_examples_section

        website_bootstrap_section
        website_overview_section
        website_support_section
      end
      div class: "container-fluid px-0" do
        website_getting_started_section
      end
      div class: "container-fluid px-0" do
        website_newsletter_section
      end
    end
  end
end

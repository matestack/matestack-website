class Website::Pages::Addons < Matestack::Ui::Page

  def response
    div class: "container" do
      website_hero_section title_1: t("addons.hero.title_1"),
        text_1: t("addons.hero.text_1"),
        text_2: t("addons.hero.text_2"),
        img_url: asset_pack_url('media/images/matestack-addons.png')
    end
    div class: "container-fluid px-0" do
      website_support_section
      website_addons_section
      website_indepth_guides_section
    end
    div class: "container-fluid px-0" do
      website_getting_started_section
    end
    div class: "container-fluid px-0" do
      website_newsletter_section
    end
  end
end

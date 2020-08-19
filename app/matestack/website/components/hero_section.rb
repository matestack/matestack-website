class Website::Components::HeroSection < Matestack::Ui::Component

  def response
    section class: "hero-section" do
      div class: 'row' do
        div class: 'services-text col-lg-7 col-md-7 col-sm-12 pt-5' do
          heading size: 1, text: t("landing_page.hero.title")
          br
          paragraph class: 'paragraph-margin', text: t("landing_page.hero.text_1")
          paragraph class: 'paragraph-margin', text: t("landing_page.hero.text_2")
        end
        div class: 'col-lg-5 col-md-5 col-sm-12 d-none d-sm-none d-md-block' do
          img path: asset_pack_url('media/images/matestack-software.png')
        end
      end
    end
  end

end

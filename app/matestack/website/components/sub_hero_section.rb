class Website::Components::SubHeroSection < Matestack::Ui::StaticComponent

  def response
    section class: "sub-hero-section" do
      div class: 'row' do
        div class: 'offset-md-3 col-sm-6 pt-5 text-center' do
          heading size: 2, text: t("landing_page.sub_hero.title")
          br
          paragraph text: t("landing_page.sub_hero.text")
        end
      end
    end
  end

end

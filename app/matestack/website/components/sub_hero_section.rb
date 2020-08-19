class Website::Components::SubHeroSection < Matestack::Ui::Component

  def response
    section class: "sub-hero-section" do
      div class: 'row' do
        div class: 'offset-md-3 col-sm-6 pt-5 text-center' do
          heading size: 2, text: t("landing_page.sub_hero.title")
          br
          paragraph text: t("landing_page.sub_hero.text")
        end
      end
      hr class: "mt-5 d-none d-lg-flex"
      div class: 'row mb-5 d-none d-lg-flex' do
        div class: 'col-sm-3 pt-5 text-center text-muted' do
          heading size: 5, text: "Ruby", class: "text-muted"
          small text: "Version 2.6.5"
        end
        div class: 'col-sm-3 pt-5 text-center text-muted' do
          heading size: 5, text: "Rails", class: "text-muted"
          small text: "Version 5/6"
        end
        div class: 'col-sm-3 pt-5 text-center text-muted' do
          heading size: 5, text: "Vue.js", class: "text-muted"
          small text: "Version 2.6.11"
        end
        div class: 'col-sm-3 pt-5 text-center text-muted' do
          heading size: 5, text: "Webpacker", class: "text-muted"
          small text: "Version 4.2"
        end
      end
      hr class: "mb-5 d-none d-lg-flex"
    end
  end

end

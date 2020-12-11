class Website::Components::HeroSection < Matestack::Ui::Component

  requires :title_1
  optional :title_2
  optional :title_3
  requires :text_1
  optional :text_2
  requires :img_url

  def response
    section class: "hero-section mt-md-2 px-md-3" do
      div class: 'row' do
        div class: 'services-text col-xl-7 col-sm-12 pt-5' do
          heading size: 1, text: title_1, class: "mt-3"
          heading size: 3, text: title_2, class: "mt-3" if title_2.present?
          heading size: 3, text: title_3, class: "mt-4" if title_3.present?
          br
          paragraph class: 'paragraph-margin', text: text_1
          paragraph class: 'paragraph-margin', text: text_2 if text_2.present?
        end
        div class: 'col-xl-5 col-sm-12 d-none d-xl-block' do
          img path: img_url
        end
      end
    end
  end

end

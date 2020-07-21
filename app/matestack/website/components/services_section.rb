class Website::Components::ServicesSection < Matestack::Ui::StaticComponent

  def response
    section class: "services-section pt-5 pb-5", id: "services" do
      services_intro
      services_overview
    end
  end

  def services_intro
    div class: 'row' do
      div class: 'offset-md-3 col-sm-6 pt-5 text-center' do
        img path: asset_pack_url("media/images/#{t("landing_page.services.icon")}")
        heading size: 2, class: "mt-5", text: t("landing_page.services.title")
        br
        paragraph text: t("landing_page.services.text")
      end
    end
  end

  def services_overview
    service_types = t("landing_page.services.service_types.types")

    div class: "container" do
      div class: 'row' do
        div class: 'offset-md-3 col-sm-6 pt-5 text-center' do
          heading size: 4, class: "mt-5", text: t("landing_page.services.service_types.title")
        end
      end
      div class: 'row mt-5 justify-content-center' do
        service_types.each do |service_name, service_attributes|
          service_card service_attributes
        end
      end
    end
  end

  def service_card service_attributes
    div class: " col-lg-2 service-card" do
      strong text: service_attributes[:title]
      br
      br
      paragraph text: service_attributes[:description]

      link path: "mailto:jonas@matestack.io" do
        button class: "btn btn-secondary small-padding", text:  t("landing_page.services.book_cta_text")
      end
    end
  end

end

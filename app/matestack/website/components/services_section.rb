class Website::Components::ServicesSection < Matestack::Ui::Component

  def response
    section class: "services-section pb-5", id: "services" do
      services_overview
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
    div class: " col-lg-2 service-card shadow-sm bg-white rounded" do
      div class: "title-section" do
        strong text: service_attributes[:title]
      end
      div class: "content-section" do
        paragraph text: service_attributes[:description]

        link path: "mailto:jonas@matestack.io", class: "text-left text-lg-center"do
          button class: "btn btn-secondary small-padding", text:  t("landing_page.services.book_cta_text")
        end
      end
    end
  end

end

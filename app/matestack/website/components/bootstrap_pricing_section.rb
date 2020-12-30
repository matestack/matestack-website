class Website::Components::BootstrapPricingSection < Matestack::Ui::Component

  def response
    section class: "bootstrap-pricing-section pb-5", id: "pricing" do
      pricing_tiers
    end
  end

  def pricing_tiers
    tiers = t("addons.bootstrap.pricing.tiers")

    div class: "container" do
      div class: 'row' do
        div class: 'offset-md-3 col-sm-6 pt-5 text-center' do
          heading size: 4, class: "mt-5", text: t("addons.bootstrap.pricing.title")
          link path: "mailto: jonas@matestack.io" do
            button class: "btn btn-secondary mt-3", text: t("addons.bootstrap.pricing.request_qa")
          end
        end
      end
      div class: 'row mt-5 justify-content-center' do
        tiers.each do |tier_name, tier_attributes|
          tier_card tier_attributes
        end
      end
    end
  end

  def tier_card tier_attributes
    div class: " col-lg-3 px-3 mt-3" do
      div class: "tier-card shadow-sm bg-white rounded h-100" do
        div class: "title-section" do
          strong text: tier_attributes[:title]
        end
        div class: "content-section" do
          paragraph text: tier_attributes[:description]
          ul class: "included-items" do
            tier_attributes[:included_items].each do |item|
              li text: item
            end
          end
          link path: tier_attributes[:cta_link], target: "_blank", class: "text-left text-lg-center" do
            button class: "btn btn-secondary small-padding", text: tier_attributes[:price]
          end
        end
      end
    end
  end

end

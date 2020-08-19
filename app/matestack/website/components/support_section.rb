class Website::Components::SupportSection < Matestack::Ui::Component

  def response
    section class: "support-section mt-5 pt-5 pb-5", id: "support" do
      sponsoring_intro
      sponsoring_tiers
    end
  end

  def sponsoring_intro
    div class: 'row mx-0' do
      div class: 'offset-md-3 col-sm-6 pt-5 text-center' do
        img path: asset_pack_url("media/images/#{t("landing_page.support.icon")}")
        heading size: 2, class: "mt-5", text: t("landing_page.support.title")
        br
        paragraph text: t("landing_page.support.text")
      end
    end
  end

  def sponsoring_tiers
    tiers = t("landing_page.support.sponsoring_tiers.tiers")

    div class: "container" do
      div class: 'row' do
        div class: 'offset-md-3 col-sm-6 pt-5 text-center' do
          heading size: 4, class: "mt-5", text: t("landing_page.support.sponsoring_tiers.title")
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
    div class: " col-lg-2 tier-card shadow-sm bg-white rounded" do
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
        link path: "https://github.com/matestack", class: "text-left text-lg-center" do
          button class: "btn btn-secondary small-padding", text: tier_attributes[:price_per_month]
        end
      end
    end
  end

end

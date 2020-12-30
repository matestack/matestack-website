class Website::Components::SupportSection < Matestack::Ui::Component

  def response
    section class: "support-section pb-5", id: "support" do
      sponsoring_tiers
    end
  end

  def sponsoring_tiers
    tiers = t("landing_page.support.sponsoring_tiers.tiers")

    div class: "container" do
      div class: 'row' do
        div class: 'col pt-5 text-center' do
          heading size: 3, class: "mt-5 mb-3", text: t("landing_page.support.title")
          paragraph text: t("landing_page.support.text")
        end
      end

      div class: 'row justify-content-center mb-5' do
        div class: 'col-xl-6 pt-5 text-center' do
          heading size: 5, text: t("landing_page.support.addon.title"), class: "text-muted"
          paragraph class: "mt-4" do
            plain t("landing_page.support.addon.text").html_safe
          end
          link path: "https://ui.matestack.io", target: "_blank" do
            img class: "mt-5 w-75 shadow rounded-lg", path: asset_pack_url('media/images/matestack-ui-bootstrap/admin-templates.png')
          end
          div class: "mt-3" do
            transition path: addons_path, delay: 300 do
              button class: "btn btn-secondary mt-2", text: t("landing_page.support.addon.learn_more_cta")
            end
          end
        end
      end

      div class: 'row' do
        div class: 'offset-md-3 col-sm-6 pt-5 text-center' do
          heading size: 5, class: "text-muted", text: t("landing_page.support.sponsoring_tiers.title")
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
        link path: "https://github.com/sponsors/matestack", class: "text-left text-lg-center" do
          button class: "btn btn-secondary small-padding", text: tier_attributes[:price_per_month]
        end
      end
    end
  end

end

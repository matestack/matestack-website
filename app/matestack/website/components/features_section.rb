class Website::Components::FeaturesSection < Matestack::Ui::Component

  def prepare
    @feature_keys = ["progressive", "components", "extensible"]
  end

  def response
    section class: "features-section" do
      div class: 'row' do
        @feature_keys.each do |feature_key|
          div class: 'col-sm-4 pt-5 text-center' do
            img path: asset_pack_url("media/images/#{t("landing_page.features.#{feature_key}")[:icon]}")
            heading size: 3, class: "mt-5", text: t("landing_page.features.#{feature_key}")[:title]
            br
            paragraph text: t("landing_page.features.#{feature_key}")[:text]
          end
        end
      end
    end
  end

end

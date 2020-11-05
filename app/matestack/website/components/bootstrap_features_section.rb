class Website::Components::BootstrapFeaturesSection < Matestack::Ui::Component

  def prepare
    @feature_keys = ["progressive", "flexible", "customize"]
  end

  def response
    section class: "bootstrap-features-section" do
      div class: 'row' do
        @feature_keys.each do |feature_key|
          div class: 'col-sm-4 pt-5 text-center' do
            img width: 50, path: asset_pack_url("media/images/#{t("addons.bootstrap.features.#{feature_key}")[:icon]}")
            heading size: 3, class: "mt-5", text: t("addons.bootstrap.features.#{feature_key}")[:title]
            br
            paragraph text: t("addons.bootstrap.features.#{feature_key}")[:text]
          end
        end
      end
    end
  end

end

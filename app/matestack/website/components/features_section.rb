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

      div class: 'row mt-5 justify-content-center' do
        div class: 'col col-md-6 pt-5 text-center' do
          youtube height: "350px", width: "100%", youtube_id: '83AERu6pmg8', start_at: 0, privacy_mode: true
        end
      end
    end
  end

end

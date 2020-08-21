class Website::Components::Layout::Footer < Matestack::Ui::Component

  def response
    footer do
      div class: "container" do
        div class: "row pt-5" do
          div class: "col-lg-6 text-center text-lg-left" do
            ["bmwi.png", "esf.jpg", "eu.jpg", "zzg.jpg", "exist.png", "zollhof.png"].each do |supporter|
              img class: "supporter-logo p-1", path: asset_pack_url("media/images/exist/#{supporter}")
            end
          end
          div class: "col-lg-6 pt-5 py-5 pt-lg-2 text-center text-lg-right" do
            plain t('footer.copyright_notice')
            plain "|"
            transition path: :imprint_path do
              plain t('footer.imprint_link_text')
            end
            plain "|"
            transition path: :privacy_path do
              plain t('footer.privacy_policy_link_text')
            end
          end
        end
      end
    end
  end

end

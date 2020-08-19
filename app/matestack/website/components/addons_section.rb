class Website::Components::AddonsSection < Matestack::Ui::Component

  def response
    section class: "addons-section" do
      div class: "container" do
        div class: 'row py-5' do
          div class: 'col-lg-5 col-md-5 col-sm-12 d-none d-sm-none d-md-block' do
            img class: "mw-100", path: asset_pack_url('media/images/matestack-addons.png')
          end
          div class: 'services-text col-lg-7 col-md-7 col-sm-12 pt-5' do
            heading size: 3, text: t("landing_page.addons.title")
            br
            paragraph class: 'paragraph-margin', text: t("landing_page.addons.text_1")
            paragraph class: 'paragraph-margin', text: t("landing_page.addons.text_2")
            button class: "btn btn-primary mt-5", disabled: true, text: t("landing_page.addons.cta_text")
          end
        end
      end
    end
  end

end

class Website::Components::BootstrapAccessSection < Matestack::Ui::Component

  def response
    section class: "bootstrap-features-section" do
      div class: 'row justify-content-center mb-5' do
        div class: 'col-sm-6 pt-5 text-center' do
          heading size: 3, text: t("addons.bootstrap.access.title")
          paragraph class: "mt-4", text: t("addons.bootstrap.access.text_1")
          paragraph text: t("addons.bootstrap.access.text_2")
          button class: "btn btn-primary mt-2", text: t("addons.bootstrap.access.cta"), attributes: button_attributes
        end
      end
    end
  end

  def button_attributes
    { "onclick": "document.getElementById(\"support\").scrollIntoView({behavior: \"smooth\", block: \"nearest\"});" }
  end

end

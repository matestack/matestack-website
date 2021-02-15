class Website::Components::BootstrapSection < Matestack::Ui::Component

  def response
    section class: "bootstrap-section pb-5" do
      div class: 'row justify-content-center mb-5' do
        div class: 'col-xl-6 pt-5 text-center' do
          heading size: 4, text: t("landing_page.bootstrap.title")
          paragraph class: "mt-4" do
            plain t("landing_page.bootstrap.text").html_safe
          end
          link path: "https://ui.matestack.io", target: "_blank" do
            img class: "mt-5 w-75 shadow rounded-lg", path: asset_pack_url('media/images/matestack-ui-bootstrap/admin-templates.png')
          end
          div class: "mt-3" do
            transition path: bootstrap_path, delay: 300 do
              button class: "btn btn-secondary mt-2", text: t("landing_page.bootstrap.learn_more_cta")
            end
          end
        end
      end
    end
  end

end

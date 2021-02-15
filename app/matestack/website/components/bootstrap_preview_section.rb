class Website::Components::BootstrapPreviewSection < Matestack::Ui::Component

  def response
    section class: "bootstrap-preview-section" do
      div class: 'row justify-content-center mb-5' do
        div class: 'col-xl-6 pt-5 text-center' do
          heading size: 4, text: t("addons.bootstrap.preview.title")
          link path: "https://ui.matestack.io", target: "_blank" do
            img class: "mt-5 w-75 shadow rounded-lg", path: asset_pack_url('media/images/matestack-ui-bootstrap/admin-templates.png')
          end
          paragraph class: "mt-4", text: t("addons.bootstrap.preview.text_1")
          link path: "https://ui.matestack.io", target: "_blank" do
            button class: "btn btn-secondary mt-2", text: t("addons.bootstrap.preview.cta")
          end
          # paragraph class: "mt-4" do
          #   plain t("addons.bootstrap.access.text_1")
          #   plain t("addons.bootstrap.access.text_2")
          # end
          # button class: "btn btn-primary mt-2",
          #   text: t("addons.bootstrap.access.cta"),
          #   attributes: {"onclick": "document.getElementById(\"pricing\").scrollIntoView({behavior: \"smooth\", block: \"nearest\"});"}
        end
      end
    end
  end

end

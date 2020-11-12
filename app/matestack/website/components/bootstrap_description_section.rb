class Website::Components::BootstrapDescriptionSection < Matestack::Ui::Component

  def response
    section class: "bootstrap-description-section" do
      bootstrap_components_partial
      smart_forms_partial
      smart_collections_partial
      admin_templates_partial
    end
  end

  def admin_templates_partial
    div class: "container" do
      div class: 'row py-5' do
        div class: 'col-lg-5 col-md-5 col-sm-12  text-center' do
          img class: "mt-5 w-75 shadow rounded-lg", path: asset_pack_url('media/images/matestack-ui-bootstrap/admin-templates.png')
        end
        div class: 'services-text col-lg-7 col-md-7 col-sm-12 pt-5' do
          heading size: 3, text: t("addons.bootstrap.admin_templates.title")
          br
          paragraph class: 'paragraph-margin', text: t("addons.bootstrap.admin_templates.text_1")
          paragraph class: 'paragraph-margin', text: t("addons.bootstrap.admin_templates.text_2")
          div class: "code-preview" do
            markdown path: "matestack/website/components/bootstrap_addon_examples/layouts"
          end
        end
      end
    end
  end

  def smart_collections_partial
    div class: "container" do
      div class: 'row py-5' do
        div class: 'services-text col-lg-7 col-md-7 col-sm-12 pt-5' do
          heading size: 3, text: t("addons.bootstrap.smart_collections.title")
          br
          paragraph class: 'paragraph-margin', text: t("addons.bootstrap.smart_collections.text_1")
          paragraph class: 'paragraph-margin', text: t("addons.bootstrap.smart_collections.text_2")
          div class: "code-preview" do
            markdown path: "matestack/website/components/bootstrap_addon_examples/smart_collections"
          end
        end
        div class: 'col-lg-5 col-md-5 col-sm-12  text-center' do
          img class: "mt-5 w-75 px-2 py-2 shadow rounded-lg", path: asset_pack_url('media/images/matestack-ui-bootstrap/smart-collections.png')
        end
      end
    end
  end

  def smart_forms_partial
    div class: "container" do
      div class: 'row py-5' do
        div class: 'col-lg-5 col-md-5 col-sm-12  text-center' do
          img class: "mt-5 w-75 px-2 py-2 shadow rounded-lg", path: asset_pack_url('media/images/matestack-ui-bootstrap/forms.png')
        end
        div class: 'services-text col-lg-7 col-md-7 col-sm-12 pt-5' do
          heading size: 3, text: t("addons.bootstrap.smart_forms.title")
          br
          paragraph class: 'paragraph-margin', text: t("addons.bootstrap.smart_forms.text_1")
          paragraph class: 'paragraph-margin', text: t("addons.bootstrap.smart_forms.text_2")
          div class: "code-preview" do
            markdown path: "matestack/website/components/bootstrap_addon_examples/forms"
          end
        end
      end
    end
  end

  def bootstrap_components_partial
    div class: "container" do
      div class: 'row py-5' do
        div class: 'services-text col-lg-7 col-md-7 col-sm-12 pt-5' do
          heading size: 3, text: t("addons.bootstrap.bootstrap_components.title")
          br
          paragraph class: 'paragraph-margin', text: t("addons.bootstrap.bootstrap_components.text_1")
          paragraph class: 'paragraph-margin', text: t("addons.bootstrap.bootstrap_components.text_2")
          paragraph class: 'paragraph-margin', text: t("addons.bootstrap.bootstrap_components.text_3")
          div class: "code-preview" do
            markdown path: "matestack/website/components/bootstrap_addon_examples/components"
          end
        end
        div class: 'col-lg-5 col-md-5 col-sm-12  text-center' do
          img class: "mt-5 w-75 shadow rounded-lg px-2 py-2", path: asset_pack_url('media/images/matestack-ui-bootstrap/bootstrap-components.png')
        end
      end
    end
  end


end

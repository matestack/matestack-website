class Website::Components::BootstrapDescriptionSection < Matestack::Ui::Component

  def response
    section class: "bootstrap-description-section" do
      admin_templates_partial
      page_layout_components_partial
      chart_components_partial
      smart_forms_partial
      smart_collections_table_partial
      smart_collections_card_partial
      bootstrap_components_partial
    end
  end

  def code_collapse_helper id, path
    button class: "btn btn-light small-padding mb-3", attributes: {
      "data-toggle": "collapse", "data-target": "##{id}", "aria-expanded": "false", "aria-controls": "#{id}"
    } do
      small text: "show/hide example code"
    end
    div class: "collapse", id: "#{id}" do
      div class: "code-preview" do
        markdown path: path
      end
    end
  end

  def admin_templates_partial
    div class: "container" do
      div class: 'row py-5' do
        div class: 'col-xl-5 col-sm-12  text-center' do
          img class: "mt-5 w-75 shadow rounded-lg", path: asset_pack_url('media/images/matestack-ui-bootstrap/admin-templates.png')
          # img class: "mt-5 w-50 shadow rounded-lg", path: asset_pack_url('media/images/matestack-ui-bootstrap/admin-templates-mobile.png')
        end
        div class: 'services-text col-xl-7 col-sm-12 pt-5' do
          heading size: 3, text: t("addons.bootstrap.admin_templates.title")
          br
          paragraph class: 'paragraph-margin', text: t("addons.bootstrap.admin_templates.text_1")
          paragraph class: 'paragraph-margin', text: t("addons.bootstrap.admin_templates.text_2")
          code_collapse_helper "admin-templates", "matestack/website/components/bootstrap_addon_examples/layouts"
        end
      end
    end
  end

  def page_layout_components_partial
    div class: "container" do
      div class: 'row py-5' do
        div class: 'col-xl-5 col-sm-12  text-center' do
          img class: "mt-5 w-75 shadow rounded-lg", path: asset_pack_url('media/images/matestack-ui-bootstrap/page-layout-components.png')
          # img class: "mt-5 w-50 shadow rounded-lg", path: asset_pack_url('media/images/matestack-ui-bootstrap/admin-templates-mobile.png')
        end
        div class: 'services-text col-xl-7 col-sm-12 pt-5' do
          heading size: 3, text: t("addons.bootstrap.page_layout_components.title")
          br
          paragraph class: 'paragraph-margin', text: t("addons.bootstrap.page_layout_components.text_1")
          paragraph class: 'paragraph-margin', text: t("addons.bootstrap.page_layout_components.text_2")
          code_collapse_helper "page-layout-components", "matestack/website/components/bootstrap_addon_examples/page_layout_components"
        end
      end
    end
  end

  def chart_components_partial
    div class: "container" do
      div class: 'row py-5' do
        div class: 'col-xl-5 col-sm-12  text-center' do
          img class: "mt-5 w-75 shadow rounded-lg", path: asset_pack_url('media/images/matestack-ui-bootstrap/chart-components.png')
          # img class: "mt-5 w-50 shadow rounded-lg", path: asset_pack_url('media/images/matestack-ui-bootstrap/admin-templates-mobile.png')
        end
        div class: 'services-text col-xl-7 col-sm-12 pt-5' do
          heading size: 3, text: t("addons.bootstrap.chart_components.title")
          br
          paragraph class: 'paragraph-margin', text: t("addons.bootstrap.chart_components.text_1")
          paragraph class: 'paragraph-margin', text: t("addons.bootstrap.chart_components.text_2")
          code_collapse_helper "chart-components", "matestack/website/components/bootstrap_addon_examples/chart_components"
        end
      end
    end
  end

  def smart_collections_table_partial
    div class: "container" do
      div class: 'row py-5' do
        div class: 'col-xl-5 col-sm-12  text-center' do
          img class: "mt-5 w-75 px-2 py-2 shadow rounded-lg", path: asset_pack_url('media/images/matestack-ui-bootstrap/smart-collections-table.png')
        end
        div class: 'services-text col-xl-7 col-sm-12 pt-5' do
          heading size: 3, text: t("addons.bootstrap.smart_collections_table.title")
          br
          paragraph class: 'paragraph-margin', text: t("addons.bootstrap.smart_collections_table.text_1")
          paragraph class: 'paragraph-margin', text: t("addons.bootstrap.smart_collections_table.text_2")
          code_collapse_helper "smart-collection-tables", "matestack/website/components/bootstrap_addon_examples/smart_collections_table"
        end
      end
    end
  end

  def smart_collections_card_partial
    div class: "container" do
      div class: 'row py-5' do
        div class: 'col-xl-5 col-sm-12  text-center' do
          img class: "mt-5 w-75 px-2 py-2 shadow rounded-lg", path: asset_pack_url('media/images/matestack-ui-bootstrap/smart-collections-card.png')
        end
        div class: 'services-text col-xl-7 col-sm-12 pt-5' do
          heading size: 3, text: t("addons.bootstrap.smart_collections_card.title")
          br
          paragraph class: 'paragraph-margin', text: t("addons.bootstrap.smart_collections_card.text_1")
          paragraph class: 'paragraph-margin', text: t("addons.bootstrap.smart_collections_card.text_2")
          code_collapse_helper "smart-collections-card", "matestack/website/components/bootstrap_addon_examples/smart_collections_card"
        end
      end
    end
  end

  def smart_forms_partial
    div class: "container" do
      div class: 'row py-5' do
        div class: 'col-xl-5 col-sm-12  text-center' do
          img class: "mt-5 w-75 px-2 py-2 shadow rounded-lg", path: asset_pack_url('media/images/matestack-ui-bootstrap/forms.png')
        end
        div class: 'services-text col-xl-7 col-sm-12 pt-5' do
          heading size: 3, text: t("addons.bootstrap.smart_forms.title")
          br
          paragraph class: 'paragraph-margin', text: t("addons.bootstrap.smart_forms.text_1")
          paragraph class: 'paragraph-margin', text: t("addons.bootstrap.smart_forms.text_2")
          code_collapse_helper "smart-forms", "matestack/website/components/bootstrap_addon_examples/forms"
        end
      end
    end
  end

  def bootstrap_components_partial
    div class: "container" do
      div class: 'row py-5' do
        div class: 'col-xl-5 col-sm-12  text-center' do
          img class: "mt-5 w-75 shadow rounded-lg px-2 py-2", path: asset_pack_url('media/images/matestack-ui-bootstrap/bootstrap-v5-components.png')
        end
        div class: 'services-text col-xl-7 col-sm-12 pt-5' do
          heading size: 3, text: t("addons.bootstrap.bootstrap_components.title")
          br
          paragraph class: 'paragraph-margin', text: t("addons.bootstrap.bootstrap_components.text_1")
          paragraph class: 'paragraph-margin', text: t("addons.bootstrap.bootstrap_components.text_2")
          paragraph class: 'paragraph-margin', text: t("addons.bootstrap.bootstrap_components.text_3")
          code_collapse_helper "bootstrap-components", "matestack/website/components/bootstrap_addon_examples/components"
        end
      end
    end
  end


end

class Website::App < Matestack::Ui::App

  def response
    website_layout_header
    nav class: "text-center mb-3", attributes: { style: "margin-top: 120px" } do
      div class: "btn-group", role: "group" do
        transition path: root_path, delay: 300 do
          button id: "top-nav-btn", class: 'btn btn-sm btn-secondary btn-group-start ', text: "matestack-ui-core"
        end
        transition path: bootstrap_path, delay: 300 do
          button id: "top-nav-btn", class: 'btn btn-sm btn-secondary btn-group-end', text: "matestack-ui-bootstrap"
        end
      end
    end
    main do
      yield_page slots: { loading_state: loading_state_element }
    end
    website_layout_footer
  end

  def loading_state_element
    slot do
      div class: 'bouncing-loader'
    end
  end

end

class Website::App < Matestack::Ui::App

  def response
    website_layout_header
    main attributes: { style: "margin-top: 120px" } do
      div class: "container" do
        page_content
      end
    end
    footer do
      div class: "row pt-5" do
        div class: "col text-center" do
          plain t('footer.copyright_notice')
        end
      end
      div class: "row pt-2" do
        div class: "col text-center" do
          transition path: :root_path do
            plain t('footer.imprint_link_text')
          end
          plain "|"
          transition path: :root_path do
            plain t('footer.privacy_policy_link_text')
          end
        end
      end
    end
  end

end

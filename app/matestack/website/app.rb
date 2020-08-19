class Website::App < Matestack::Ui::App

  def response
    website_layout_header
    main attributes: { style: "margin-top: 120px" } do
      yield_page
    end
    website_layout_footer
  end

end

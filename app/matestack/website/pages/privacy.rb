class Website::Pages::Privacy < Matestack::Ui::Page

  def response
    div class: "container" do
      div class: "row justify-content-center" do
        div class: "col-8" do
          website_legal_privacy
        end
      end
    end
  end


end

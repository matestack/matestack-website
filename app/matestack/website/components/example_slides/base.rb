class Website::Components::ExampleSlides::Base < Matestack::Ui::Component

  def response
    div class: "slider-item example-slide" do
      div class: "row example-container" do
        div class: "col-xl-4 pt-3 pr-5 description-wrapper" do
          description_section
        end
        div class: "col-xl-8" do
          div class: "row code-preview-container shadow-sm bg-white rounded" do
            div class: "col-xl-7 code-wrapper pt-3" do
              code_section
            end
            div class: "col-xl-5 pt-3 pb-5 preview-wrapper" do
              strong text: "Preview:"
              br
              br
              preview_section
            end
          end
        end
      end
    end
  end

end

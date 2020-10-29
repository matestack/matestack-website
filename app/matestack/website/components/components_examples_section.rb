class Website::Components::ComponentsExamplesSection < Matestack::Ui::Component

  def response
    section class: "examples-section pb-5 mt-5" do
      description_section
      examples_slider
    end
  end

  def description_section
    div class: "row pt-5 justify-content-center" do
      div class: "col-md-6 text-center" do
        heading size: 3 do
          span class: "rounded-circle text-white feature-heading", text: t("landing_page.components_examples_section.number")
          plain t("landing_page.components_examples_section.title")
        end
        paragraph text: t("landing_page.components_examples_section.text")
      end
    end
  end

  def examples_slider
    div class: 'row' do
      div class: 'col pt-5' do
        slick_slider do
          (1..7).each do |i|
            self.send("components_example_slide_#{i}")
          end
        end
      end
    end
  end

end

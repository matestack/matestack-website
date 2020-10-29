class Website::Components::SpaExamplesSection < Matestack::Ui::Component

  def response
    section class: "examples-section mt-5 pb-5" do
      description_section
      examples_slider
    end
  end

  def description_section
    div class: "row justify-content-center" do
      div class: "col-md-6 text-center" do
        heading size: 3 do
          span class: "rounded-circle text-white feature-heading", text: t("landing_page.spa_examples_section.number")
          plain t("landing_page.spa_examples_section.title")
        end
        paragraph text: t("landing_page.spa_examples_section.text")
      end
    end
  end

  def examples_slider
    div class: 'row' do
      div class: 'col pt-5' do
        slick_slider do
          (1..3).each do |i|
            self.send("spa_example_slide_#{i}")
          end
        end
      end
    end
  end

end

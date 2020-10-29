module Website::Components::ExampleSlides::SpaExamples
  class Slide1 < Website::Components::ExampleSlides::Base

    def description_section
      heading size: 4, text: t("example_slides.spa_examples.slide_1.heading")
      paragraph text: t("example_slides.spa_examples.slide_1.text_1")
      paragraph text: t("example_slides.spa_examples.slide_1.text_2")
    end

    def code_section
      markdown path: "matestack/website/components/example_slides/spa_examples/slide_1"
    end

    def preview_section
      div class: "container" do
        small text: "just a mocked example"
        br
        small text: "click here for a proper page transition:"
        small do
          transition path: addons_path, delay: 500 do
            plain "addons"
          end
        end
      end
      nav do
        onclick emit: "show_page1", attributes: { style: "display: inline;" } do
          button text: "Page 1"
        end
        onclick emit: "show_page2", attributes: { style: "display: inline;" } do
          button text: "Page 2"
        end
      end
      main do
        toggle show_on: "show_page1", hide_on: "show_page2", init_show: true do
          div class: "container" do
            plain "Page1"
          end
        end
        toggle show_on: "show_page2", hide_on: "show_page1", init_show: false do
          div class: "container" do
            plain "Page2"
          end
        end
      end
    end

  end
end

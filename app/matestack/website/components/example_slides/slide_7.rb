module Website::Components::ExampleSlides
  class Slide7 < Base

    def description_section
      heading size: 4, text: t("example_slides.slide_7.heading")
      paragraph text: t("example_slides.slide_7.text_1")
      paragraph text: t("example_slides.slide_7.text_2")
    end

    def code_section
      markdown path: "matestack/website/components/example_slides/slide_7"
    end

    def preview_section
      my_vue_js_component
      toggle show_on: "some_event", hide_after: "3000" do
        span class: "success-message", text: "event triggered from custom vuejs component"
      end
    end

  end
end

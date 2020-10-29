module Website::Components::ExampleSlides::ReactivityExamples
  class Slide6 < Website::Components::ExampleSlides::Base

    def description_section
      heading size: 4, text: t("example_slides.reactivity_examples.slide_6.heading")
      paragraph text: t("example_slides.reactivity_examples.slide_6.text_1")
      paragraph text: t("example_slides.reactivity_examples.slide_6.text_2")
    end

    def code_section
      markdown path: "matestack/website/components/example_slides/reactivity_examples/slide_6"
    end

    def preview_section
      my_vue_js_component
      toggle show_on: "some_event", hide_after: "3000" do
        span class: "message success", text: "event triggered from custom vuejs component"
      end
    end

  end
end

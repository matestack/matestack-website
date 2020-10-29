module Website::Components::ExampleSlides::ReactivityExamples
  class Slide1 < Website::Components::ExampleSlides::Base

    def description_section
      heading size: 4, text: t("example_slides.reactivity_examples.slide_1.heading")
      paragraph text: t("example_slides.reactivity_examples.slide_1.text_1")
      paragraph text: t("example_slides.reactivity_examples.slide_1.text_2")
    end

    def code_section
      markdown path: "matestack/website/components/example_slides/reactivity_examples/slide_1"
    end

    def preview_section
      onclick emit: "some_event" do
        button text: "click me"
      end
      toggle show_on: "some_event", hide_after: 5000 do
        br
        plain "Oh yes! You clicked me!"
      end
    end

  end
end

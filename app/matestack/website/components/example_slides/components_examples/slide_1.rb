module Website::Components::ExampleSlides::ComponentsExamples
  class Slide1 < Website::Components::ExampleSlides::Base

    def description_section
      heading size: 4, text: t("example_slides.component_examples.slide_1.heading")
      paragraph text: t("example_slides.component_examples.slide_1.text_1")
      paragraph text: t("example_slides.component_examples.slide_1.text_2")
    end

    def code_section
      markdown path: "matestack/website/components/example_slides/components_examples/slide_1"
    end

    def preview_section
      bootstrap_card_component title: "hello", body: "world"
    end

  end
end

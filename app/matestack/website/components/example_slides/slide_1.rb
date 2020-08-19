module Website::Components::ExampleSlides
  class Slide1 < Base

    def description_section
      heading size: 4, text: t("example_slides.slide_1.heading")
      paragraph text: t("example_slides.slide_1.text_1")
      paragraph text: t("example_slides.slide_1.text_2")
    end

    def code_section
      markdown path: "matestack/website/components/example_slides/slide_1"
    end

    def preview_section
      plain "hello world"
    end

  end
end

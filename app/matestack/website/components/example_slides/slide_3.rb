module Website::Components::ExampleSlides
  class Slide3 < Base

    def prepare
      @items = [{name: "A"}, {name: "B"}, {name: "C"}]
    end

    def description_section
      heading size: 4, text: t("example_slides.slide_3.heading")
      paragraph text: t("example_slides.slide_3.text_1")
    end

    def code_section
      markdown path: "matestack/website/components/example_slides/slide_3"
    end

    def preview_section
      @items.each do |item|
        my_card_component item: item
      end
    end

  end
end

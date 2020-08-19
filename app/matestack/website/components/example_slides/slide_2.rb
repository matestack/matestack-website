module Website::Components::ExampleSlides
  class Slide2 < Base

    def prepare
      @items = [{name: "A"}, {name: "B"}, {name: "C"}]
    end

    def description_section
      heading size: 4, text: t("example_slides.slide_2.heading")
      paragraph text: t("example_slides.slide_2.text_1")
    end

    def code_section
      markdown path: "matestack/website/components/example_slides/slide_2"
    end

    def preview_section
      @items.each do |item|
        item_card item
      end
    end

    def item_card item
      div class: "some-card-style" do
        plain item[:name]
      end
    end

  end
end

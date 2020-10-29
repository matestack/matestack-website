module Website::Components::ExampleSlides::ReactivityExamples
  class Slide2 < Website::Components::ExampleSlides::Base

    def description_section
      heading size: 4, text: t("example_slides.reactivity_examples.slide_2.heading")
      paragraph text: t("example_slides.reactivity_examples.slide_2.text_1")
      paragraph text: t("example_slides.reactivity_examples.slide_2.text_2")
    end

    def code_section
      markdown path: "matestack/website/components/example_slides/reactivity_examples/slide_2"
    end

    def preview_section
      small text: "Check your browsers network monitoring ;)"
      br
      br
      action my_action_config do
        button text: "click me"
      end
      br
      br
      toggle show_on: "some_other_event", hide_after: 5000 do
        plain "Success!"
      end
    end

    def my_action_config
      {
        path: :some_rails_route_path,
        method: :post,
        success: {
          emit: "some_other_event"
        }
      }
    end

  end
end

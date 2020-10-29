module Website::Components::ExampleSlides::ReactivityExamples
  class Slide3 < Website::Components::ExampleSlides::Base

    def description_section
      heading size: 4, text: t("example_slides.reactivity_examples.slide_3.heading")
      paragraph text: t("example_slides.reactivity_examples.slide_3.text_1")
    end

    def code_section
      markdown path: "matestack/website/components/example_slides/reactivity_examples/slide_3"
    end

    def preview_section
      small text: "Check your browsers network monitoring ;)"
      br
      br
      form my_form_config do
        form_input key: :some_attribute, type: :text
        br
        br
        form_submit do
          button text: "click me"
        end
      end
      br
      toggle show_on: "submitted", hide_after: 5000 do
        span class: "message success", text: "created successfully"
      end
      toggle show_on: "failed", hide_after: 7000 do
        span class: "message failure", text: "data was not saved, please check form"
      end
    end

    def my_form_config
      {
        for: :mocked_active_record_instance,
        path: :some_form_submit_route_path,
        method: :post,
        success: {
          emit: "submitted"
        },
        failure: {
          emit: "failed"
        }
      }
    end

  end
end

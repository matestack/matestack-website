module Website::Components::ExampleSlides
  class Slide5 < Base

    def description_section
      heading size: 4, text: t("example_slides.slide_5.heading")
      paragraph text: t("example_slides.slide_5.text_1")
    end

    def code_section
      markdown path: "matestack/website/components/example_slides/slide_5"
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
        span class: "success-message", text: "created successfully"
      end
      toggle show_on: "failed", hide_after: 5000 do
        span class: "failure-message", text: "data was not saved, please check form"
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

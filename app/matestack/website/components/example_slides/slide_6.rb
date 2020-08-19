module Website::Components::ExampleSlides
  class Slide6 < Base

    def description_section
      heading size: 4, text: t("example_slides.slide_6.heading")
      paragraph text: t("example_slides.slide_6.text_1")
      paragraph text: t("example_slides.slide_6.text_2")
    end

    def code_section
      markdown path: "matestack/website/components/example_slides/slide_6"
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
      toggle show_on: "form_submitted", hide_after: 5000 do
        span class: "success-message", text: "created successfully"
      end
      toggle show_on: "form_failed", hide_after: 5000 do
        span class: "failure-message", text: "data was not saved, please check form"
      end
      async rerender_on: "form_submitted", id: "mocked-instance-list" do
        unless session[:created_instances].nil?
          ul do
            session[:created_instances].first(5).each do |mocked_instance|
              li text: mocked_instance
            end
          end
        end
      end
    end

    def my_form_config
      {
        for: :mocked_active_record_instance,
        path: :some_form_submit_route_path,
        method: :post,
        success: {
          emit: "form_submitted"
        },
        failure: {
          emit: "form_failed"
        }
      }
    end

  end
end

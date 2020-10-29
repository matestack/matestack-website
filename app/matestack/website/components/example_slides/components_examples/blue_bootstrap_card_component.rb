module Website::Components::ExampleSlides::ComponentsExamples
  class BlueBootstrapCardComponent < BootstrapCardComponent

    def response
      div class: "card shadow-sm border-0 bg-primary text-white" do
        img path: image, class: "w-100" if image.present?
        card_content
        card_footer if footer.present?
      end
    end

  end
end

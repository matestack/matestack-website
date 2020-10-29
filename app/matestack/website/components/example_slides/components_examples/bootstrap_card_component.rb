module Website::Components::ExampleSlides::ComponentsExamples
  class BootstrapCardComponent < Matestack::Ui::Component

    requires :body
    optional :title
    optional :image
    optional :footer

    def response
      div class: "card shadow-sm border-0 bg-light" do
        img path: image, class: "w-100" if image.present?
        card_content
        card_footer if footer.present?
      end
    end

    def card_content
      div class: "card-body" do
        heading size: 5, text: title if title.present?
        paragraph class: "card-text", text: body
      end
    end

    def card_footer
      div class: "card-footer text-muted" do
        plain footer
      end
    end

  end
end

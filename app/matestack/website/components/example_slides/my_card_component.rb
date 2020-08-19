module Website::Components::ExampleSlides
  class MyCardComponent < Matestack::Ui::Component

    requires :item

    def response
      div class: "some-card-style" do
        plain item[:name]
      end
    end

  end
end

class Website::Components::ExamplesSection < Matestack::Ui::Component

  def response
    section class: "examples-section mt-3 pb-5" do
      examples_slider
    end
  end

  def examples_slider
    div class: 'row' do
      div class: 'col pt-5' do
        slick_slider do
          (1..7).each do |i|
            self.send("example_slide_#{i}")
          end
        end
      end
    end
  end

end

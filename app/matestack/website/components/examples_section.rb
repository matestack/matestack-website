class Website::Components::ExamplesSection < Matestack::Ui::StaticComponent

  def response
    section class: "examples-section mt-3 pb-5" do
      examples_slider
    end
  end

  def examples_slider
    div class: 'row' do
      div class: 'offset-md-3 col-sm-6 pt-5 text-center' do
        plain "TODO: examples slider"
      end
    end
  end


end

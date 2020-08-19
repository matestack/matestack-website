module Website::Components::ExampleSlides
  class MyVueJsComponent < Matestack::Ui::VueJsComponent

    vue_js_component_name "my-vue-js-component"

    def response
      div class: "my-vue-js-component" do
        button attributes: {"@click": "increaseValue"}, text: "increase client side value"
        br
        br
        plain "{{ dynamicValue }}"
      end
    end

  end
end

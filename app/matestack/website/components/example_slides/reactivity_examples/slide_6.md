`app/matestack/components/some_component.rb`

```ruby

class Components::SomeComponent < Matestack::Ui::Component

  def response
    Components::MyVueJsComponent.()
    toggle show_on: "some_event", hide_after: "3000" do
      span class: "message success" do
        plain "event triggered from custom vuejs component"
      end
    end
  end

end

```
`app/matestack/components/my_vue_js_component.rb`

```ruby
class Components::MyVueJsComponent < Matestack::Ui::VueJsComponent

  vue_name "my-vue-js-component"

  def response
    div class: "my-vue-js-component" do
      button "@click": "increaseValue"
      br
      plain "{{ dynamicValue }}!"
    end
  end

end
```

`app/matestack/components/my_vue_js_component.js`

```javascript
Vue.component('my-vue-js-component', {
  mixins: [MatestackUiCore.componentMixin],
  data: () => {
    return {
      dynamicValue: 0
    };
  },
  methods: {
    increaseValue(){
      this.dynamicValue++
      MatestackUiCore.eventHub.$emit("some_event")
    }
  }
});
```

`app/matestack/my_page.rb`

```ruby

class MyPage < Matestack::Ui::Page

  def response
    my_vue_js_component
    toggle show_on: "some_event", hide_after: "3000" do
      span class: "success-message" do
        plain "event triggered from custom vuejs component"
      end
    end
  end

end

```
`app/matestack/my_vue_js_component.rb`

```ruby
class MyVueJsComponent < Matestack::Ui::VueJsComponent

  vue_js_component_name "my-vue-js-component"

  def response
    div class: "my-vue-js-component" do
      button attributes: {"@click": "increaseValue"}
      br
      plain "{{ dynamicValue }}!"
    end
  end

end
```

`app/matestack/my_vue_js_component.js`

```javascript
MatestackUiCore.Vue.component('my-vue-js-component', {
  mixins: [MatestackUiCore.componentMixin],
  data: () => {
    return {
      dynamicValue: 0
    };
  },
  methods: {
    increaseValue(){
      this.dynamicValue++
      MatestackUiCore.matestackEventHub.$emit("some_event")
    }
  }
});
```

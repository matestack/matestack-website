`app/matestack/components/some_component.rb`

```ruby

class Components::SomeComponent < Matestack::Ui::Component

  def response
    onclick emit: "some_event" do
      button "click me"
    end
    toggle show_on: "some_event", hide_after: 5000 do
      plain "Oh yes! You clicked me!"
    end
  end

end

```

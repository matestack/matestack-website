`app/matestack/components/some_component.rb`

```ruby

class Components::SomeComponent < Matestack::Ui::Component

  def response
    action my_action_config do
      button text: "click me"
    end
    toggle show_on: "some_event", hide_after: 5000 do
      plain "Success!"
    end
  end

  def my_action_config
    {
      path: some_rails_route_path,
      method: :post,
      success: {
        emit: "some_event"
      }
    }
  end

end

```

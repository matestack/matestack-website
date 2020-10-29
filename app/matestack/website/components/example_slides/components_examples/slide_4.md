`app/matestack/components/blue_card.rb`

```ruby

class Components::BlueCard < Components::Card

  def response
    div class: "card shadow-sm border-0 bg-primary text-white" do
      img path: image, class: "w-100" if image.present?
      card_content #defined in parent class
      card_footer if footer.present? #defined in parent class
    end
  end

end

```

`app/matestack/components/registry.rb`

```ruby
module Components::Registry

  Matestack::Ui::Core::Component::Registry.register_components(
    blue_card: Components::BlueCard,
    #...
  )

end
```

`app/views/your_view.html.erb`

```erb
<!-- some other erb markup -->
<%= matestack_component :blue_card, title: "hello", body: "world" %>
<!-- some other erb markup -->
```

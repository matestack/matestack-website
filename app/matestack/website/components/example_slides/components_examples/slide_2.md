`app/views/your_view.html.erb`

```erb

<!-- some other erb markup -->
<%= matestack_component :card, title: "hello", body: "world" %>
<!-- some other erb markup -->

```

`app/matestack/components/registry.rb`

```ruby
module Components::Registry

  Matestack::Ui::Core::Component::Registry.register_components(
    card: Components::Card,
    #...
  )

end
```

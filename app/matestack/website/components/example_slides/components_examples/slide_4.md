`app/matestack/components/blue_card.rb`

```ruby

class Components::BlueCard < Components::Card

  def response
    div class: "card shadow-sm border-0 bg-primary text-white" do
      img path: context.image, class: "w-100" if context.image.present?
      card_content #defined in parent class
      card_footer if context.footer.present? #defined in parent class
    end
  end

end

```

`app/views/your_view.html.erb`

```erb
<!-- some other erb markup -->
<%= Components::BlueCard.(title: "hello", body: "world") %>
<!-- some other erb markup -->
```

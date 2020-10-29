`app/matestack/components/card.rb`

```ruby

class Components::Card < Matestack::Ui::Component

  requires :body
  optional :title
  optional :image

  def response
    div class: "card shadow-sm border-0 bg-light" do
      img path: image, class: "w-100" if image.present?
      # calling the CardBody component rather than using Ruby method partials
      card_body title: title, body: body
    end
  end

end

```
`app/matestack/components/card_body.rb`

```ruby

class Components::CardBody < Matestack::Ui::Component

  requires :body
  optional :title

  def response
    # Just an example. Would make more sense, if this component had
    # a more complex structure
    div class: "card-body" do
      heading size: 5, text: title if title.present?
      paragraph class: "card-text", text: body
    end
  end

end

```

`app/matestack/components/registry.rb`

```ruby
module Components::Registry

  Matestack::Ui::Core::Component::Registry.register_components(
    card: Components::Card,
    card_body: Components::CardBody,
    #...
  )

end
```

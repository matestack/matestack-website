`app/matestack/components/card.rb`

```ruby

class Components::Card < Matestack::Ui::Component

  requires :body
  optional :title
  optional :image

  def response
    div class: "card shadow-sm border-0 bg-light" do
      img path: context.image, class: "w-100" if context.image.present?
      # calling the CardBody component rather than using Ruby method partials
      Components::CardBody.(title: context.title, body: context.body)
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
      h5 context.title if context.title.present?
      paragraph context.body, class: "card-text"
    end
  end

end

```

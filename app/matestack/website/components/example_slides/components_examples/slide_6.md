`app/matestack/components/card.rb`

```ruby

class Components::Card < Matestack::Ui::Component

  requires :body
  optional :title
  optional :image

  def response
    div class: "card shadow-sm border-0 bg-light" do
      img path: context.image, class: "w-100" if context.image.present?
      Components::CardBody.() do
        # yielding a block into the card_body component
        h5 context.title if context.title.present?
        paragraph context.body, class: "card-text"
      end
    end
  end

end

```
`app/matestack/components/card_body.rb`

```ruby

class Components::CardBody < Matestack::Ui::Component

  def response
    # Just an example. Would make more sense, if this component had
    # a more complex structure
    div class: "card-body" do
      yield
    end
  end

end

```

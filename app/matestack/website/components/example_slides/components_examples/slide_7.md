`app/matestack/components/card.rb`

```ruby

class Components::Card < Matestack::Ui::Component

  requires :body
  optional :title
  optional :image

  def response
    div class: "card shadow-sm border-0 bg-light" do
      img path: context.image, class: "w-100" if context.image.present?
      Components::CardBody.(slots: {
        heading: method(:heading_slot), body: method(:body_slot)
      })
    end
  end

  def heading_slot
    h5 context.title if context.title.present?
  end

  def body_slot
    paragraph context.body, class: "card-text"
  end

end

```
`app/matestack/components/card_body.rb`

```ruby

class Components::CardBody < Matestack::Ui::Component

  requires :slots

  def response
    # Just an example. Would make more sense, if this component had
    # a more complex structure
    div class: "card-body" do
      div class: "heading-section" do
        slot :heading
      end
      div class: "body-section" do
        slot :body
      end
    end
  end

end

```

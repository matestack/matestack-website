`app/matestack/components/card.rb`

```ruby

class Components::Card < Matestack::Ui::Component

  requires :body
  optional :title
  optional :image

  def response
    div class: "card shadow-sm border-0 bg-light" do
      img path: image, class: "w-100" if image.present?
      card_body slots: { heading: heading_slot, body: body_slot }
    end
  end

  def heading_slot
    slot do
      heading size: 5, text: title if title.present?
    end
  end
  
  def body_slot
    slot do
      paragraph class: "card-text", text: body
    end
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
        slot slots[:heading]
      end
      div class: "body-section" do
        slot slots[:body]
      end
    end
  end

end

```

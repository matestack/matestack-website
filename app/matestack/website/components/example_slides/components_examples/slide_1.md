`app/matestack/components/card.rb`

```ruby

class Components::Card < Matestack::Ui::Component

  requires :body
  optional :title
  optional :image

  def response
    div class: "card shadow-sm border-0 bg-light" do
      img path: image, class: "w-100" if image.present?
      div class: "card-body" do
        heading size: 5, text: title if title.present?
        paragraph class: "card-text", text: body
      end
    end
  end

end

```

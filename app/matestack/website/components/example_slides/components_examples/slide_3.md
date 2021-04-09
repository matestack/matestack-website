`app/matestack/components/card.rb`

```ruby

class Components::Card < Matestack::Ui::Component

  requires :body
  optional :title
  optional :image
  optional :footer

  def response
    div class: "card shadow-sm border-0 bg-light" do
      img path: context.image, class: "w-100" if context.image.present?
      card_content
      card_footer if context.footer.present?
    end
  end

  def card_content
    div class: "card-body" do
      h5 context.title if context.title.present?
      paragraph context.body, class: "card-text"
    end
  end

  def card_footer
    div class: "card-footer text-muted" do
      plain footer
    end
  end

end

```

`app/views/your_view.html.erb`

```erb
<!-- some other erb markup -->
<%= Components::Card.(title: "hello", body: "world", footer: "foo") %>
<!-- some other erb markup -->
```

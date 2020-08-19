`app/matestack/my_page.rb`

```ruby

class MyPage < Matestack::Ui::Page
  #...
  def response
    @items.each do |item|
      my_card_component item: item
    end
  end

end

```

`app/matestack/components/my_card_component.rb`

```ruby

class MyCardComponent < Matestack::Ui::Component

  requires :item

  def response
    div class: "some-card-style" do
      plain item[:name]
    end
  end

end

```

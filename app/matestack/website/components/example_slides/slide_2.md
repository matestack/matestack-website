`app/matestack/my_app/pages/some_page.rb`

```ruby

class MyApp::Pages::SomePage < Matestack::Ui::Page

  def prepare
    @items = [
      {name: "A"},
      {name: "B"},
      {name: "C"}
    ]
  end

  def response  
    @items.each do |item|
      item_card item
    end
  end

  def item_card item
    div class: "some-card-style" do
      plain item[:name]
    end
  end

end

```

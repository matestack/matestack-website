`app/matestack/my_admin/pages/dashboard.rb`

```ruby

class MyAdmin::Pages::Dashboard < Matestack::Ui::Page

  def response
    row do
      col sm: 4 do
        card img_path: image_url("...png"), title: "Card 1", body: "Some text..."
      end
      col sm: 4 do
        card img_path: image_url("...png"), title: "Card 2", body: "Some text..."
      end
      col sm: 4 do
        card img_path: image_url("...png"), title: "Card 3", body: "Some text..."
      end
    end
  end

end

```

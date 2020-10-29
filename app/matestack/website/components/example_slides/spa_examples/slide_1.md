`app/matestack/some_app/app.rb`

```ruby

class SomeApp::App < Matestack::Ui::App

  def response
    nav do
      transition path: page1_path do
        button text: "Page 1"
      end
      transition path: page2_path do
        button text: "Page 2"
      end
    end
    main do
      div class: "container" do
        yield_page
      end
    end
  end

end

```

`app/matestack/some_app/pages/page1.rb`

```ruby
class SomeApp::Pages::Page1 < Matestack::Ui::Page

  def response
    div class: "row" do
      div class: "col" do
        plain "Page 1"
      end
    end
  end

end

```

`app/matestack/some_app/pages/page2.rb`

```ruby
class SomeApp::Pages::Page2 < Matestack::Ui::Page

  def response
    div class: "row" do
      div class: "col" do
        plain "Page 2"
      end
    end
  end

end

```

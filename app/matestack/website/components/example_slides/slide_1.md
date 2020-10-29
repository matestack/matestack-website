`app/controllers/my_controller.rb`

```ruby

class MyController < ApplicationController

  include Matestack::Ui::Core::ApplicationHelper
  include Components::Registry #used later on

  matestack_app MyApp::App

  def my_action
    render MyApp::SomePage
  end

end

```

`app/matestack/my_app/app.rb`

```ruby
class MyApp::App < Matestack::Ui::App

  def response
    nav do
      transition path: some_other_page_path do
        button text: "Some other page"
      end
    end
    main do
      div class: "my-layout-class" do
        yield_page
      end
    end
  end

end

```

`app/matestack/my_app/pages/some_page.rb`

```ruby
class MyApp::Pages::SomePage < Matestack::Ui::Page

  def response
    plain "hello world"
  end

end

```

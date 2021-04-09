`app/controllers/some_controller.rb`

```ruby

class SomeController < ApplicationController

  include Matestack::Ui::Core::Helper

  matestack_app SomeApp::App

  def page1
    render SomeApp::Page1
  end

  def page2
    render SomeApp::Page2
  end

end

```

`app/config/routes.rb`

```ruby
Rails.application.routes.draw do

  root to: 'some#page1'

  get :page1, to: 'some#page1'
  get :page2, to: 'some#page2'

end

```

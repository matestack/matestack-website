`app/matestack/some_app/app.rb`

```ruby

class SomeApp::App < Matestack::Ui::App

  def response
    nav do
      transition path: page1_path do
        button "Page 1"
      end
      transition path: page2_path do
        button "Page 2"
      end
    end
    main do
      div class: "container" do
        yield
      end
    end
  end

  def loading_state_element
    div class: 'some-loading-element-styles'
  end

end

```

`app/assets/stylesheets/application.scss`

```scss

.matestack-page-container{

  .matestack-page-wrapper {
    opacity: 1;
    transition: opacity 0.2s ease-in-out;

    &.loading {
      opacity: 0;
    }
  }

  .loading-state-element-wrapper{
    opacity: 0;
    transition: opacity 0.3s ease-in-out;

    &.loading {
      opacity: 1;
    }
  }

}

```

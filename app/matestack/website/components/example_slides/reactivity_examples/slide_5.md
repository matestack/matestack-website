`app/matestack/components/some_component.rb`

```ruby

class Components::SomeComponent < Matestack::Ui::Component

  def response
    matestack_form my_form_config do
      #...
    end
    #...
    ul do
      cable prepend_on: "new_element_created", id: "mocked-instance-list" do
        MyActiveRecordModel.last(5).each do |model|
          li model
        end
      end
    end
  end

end

```

`app/controllers/some_controller.rb`

```ruby
# within your controller action handling the form input
ActionCable.server.broadcast("matestack_ui_core", {
  event: "new_element_created",
  data: "<li>#{params[:some_attribute]}</li>")
})

```

`app/matestack/components/some_component.rb`

```ruby

class Components::SomeComponent < Matestack::Ui::Component

  def prepare
    @new_active_record_instance = MyActiveRecordModel.new
  end

  def response
    form my_form_config do
      form_input key: :some_attribute, type: :text
      form_submit do
        button text: "click me"
      end
    end
    toggle show_on: "submitted", hide_after: 5000 do
      span class: "message success" do
        plain "created successfully"
      end
    end
    toggle show_on: "failed", hide_after: 5000 do
      span class: "message failure" do
        plain "data was not saved, please check form"
      end
    end
  end

  def my_form_config
    {
      for: @new_active_record_instance,
      path: some_rails_route_path,
      method: :post,
      success: {
        emit: "submitted"
      },
      failure: {
        emit: "failed"
      }
    }
  end

end

```

`app/matestack/components/some_component.scss`

```scss

form {
  input.error{
    border: 1px solid red;
  }
  .errors {
    display: block;
    color: red;
    font-size: 12px;
    margin-bottom: -40px;
  }
}

.message{
  position: absolute;
  bottom: 0px;
  height: 40px;
  color: white;
  width: 100%;
  &.success{
    background-color: green;
  }
  &.failure{
    background-color: red;
  }
}


```

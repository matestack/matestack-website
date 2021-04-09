`app/matestack/components/some_component.rb`

```ruby

class Components::SomeComponent < Matestack::Ui::Component

  def response
    matestack_form my_form_config do
      #...
    end
    #...
    async rerender_on: "submitted", id: "my-model-list" do
      ul do
        MyActiveRecordModel.last(5).each do |model|
          li model.some_attribute
        end
      end
    end
  end

  def my_form_config
    {
      #...
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

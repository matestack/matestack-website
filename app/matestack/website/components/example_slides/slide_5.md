`app/matestack/my_page.rb`

```ruby

class MyPage < Matestack::Ui::Page

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
      span class: "success-message" do
        plain "created successfully"
      end
    end
    toggle show_on: "failed", hide_after: 5000 do
      span class: "failure-message" do
        plain "data was not saved, please check form"
      end
    end
  end

  def my_form_config
    {
      for: @new_active_record_instance,
      path: :some_rails_route,
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

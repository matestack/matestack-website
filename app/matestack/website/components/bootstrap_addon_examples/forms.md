`app/matestack/my_admin/components/users_form.rb`

```ruby

class MyAdmin::Components::UsersForm < Matestack::Ui::Component

  requires :user

  def response
    form form_config do
      bootstrap_input   key: :name, type: :text, label: "Name"
      bootstrap_input   key: :avatar, type: :file, label: "Avatar"
      bootstrap_select  key: :role, options: [:client, :admin], label: "Role",
                        placeholder: "Select Role"
      bootstrap_switch  key: :active, label: "Active?"
      bootstrap_submit  button_variant: :primary, spinner_variant: :light, text: "Submit"
    end
  end

  def form_config
    {
      multipart: true, # due to file upload
      for: user,
      path: admin_user_path(user.id),
      method: :put,
      success: {
        emit: :success
      },
      failure: {
        emit: :failure
      }
    }
  end


end

```

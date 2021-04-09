`app/matestack/my_admin/components/users_form.rb`

```ruby

class MyAdmin::Components::UsersForm < Matestack::Ui::Component

  requires :user

  def response
    matestack_form form_config do
      bs_form_input   key: :name, type: :text, label: "Name"
      bs_form_input   key: :avatar, type: :file, label: "Avatar"
      bs_form_select  key: :role, options: [:client, :admin], label: "Role",
                        placeholder: "Select Role"
      bs_form_switch  key: :active, label: "Active?"
      bs_form_submit  button_variant: :primary, spinner_variant: :light, text: "Submit"
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

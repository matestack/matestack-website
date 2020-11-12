`app/matestack/my_admin/components/users_collection.rb`

```ruby

class MyAdmin::Components::UsersCollection < Matestack::Ui::Component

  def response
    smart_table table_config
  end

  def table_config
    {
      base_query: User.all, # ActiveRecord query, could be something different than .all
      columns: [ :name, :email, :age ], # which columns should be shown?
      paginate: 5, # optional: how many items should be shown per page?
      filters: filters, # optional: which filters should appear?
      row_actions: row_actions # optional: what actions should be possible per row?
    }
  end

  def filters
    [
      {
        column: :name,
        type: :input,
        match: :like,
        placeholder: "Search by name"
      }
    ]
  end

  def row_actions
    [
      {
        type: :action,
        icon: "trash2",
        btn_variant: :danger,
        method: :delete,
        path: :admin_user_path,
        params: { id: :id },
        confirm: true
      },
      #...
    ]
  end


end

```

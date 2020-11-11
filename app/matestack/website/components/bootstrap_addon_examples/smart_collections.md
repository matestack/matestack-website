`app/matestack/my_admin/components/users_collection.rb`

```ruby

class MyAdmin::Components::UsersCollection < Matestack::Ui::Component

  def response
    row do
      col do
        smart_table table_config
      end
    end
  end

  def table_config
    {
      base_query: User.all, # ActiveRecord query, could be something different than .all
      columns: [ :created_at, :name, :email, :age ], # which columns should be shown?
      filter: [ :name, :email ], filter_option: :like, # optional: which filters should appear?
      order: { created_at: :desc }, # optional: how should the collection be orderable?
      pagination: 10, # optional: how many items should be shown per page?
      row_actions: row_actions, # optional
      row_transitions: row_transitions # optional
    }
  end

  def row_actions
    # configure what actions should appear per row as buttons with text or icons
    # pass in path as symbol, as it will be resolved within the smart_table component
    # for each iteration, calling the "id" of the instance of the current iteration
    [
      { icon: "delete", method: :delete, path: :admin_user_destroy_path, params: { id: :id } }
    ]
  end

  def row_transitions
    # configure what transitions should be possible per row as buttons with text or icons
    # pass in path as symbol, as it will be resolved within the smart_table component
    # for each iteration, calling the "id" of the instance of the current iteration
    [
      { icon: "show-more", path: :admin_user_path, params: { id: :id } }
    ]
  end


end

```

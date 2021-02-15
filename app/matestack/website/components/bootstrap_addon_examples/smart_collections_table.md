`app/matestack/my_admin/pages/orders/index.rb`

```ruby

class MyAdmin::Pages::Orders::Index < Matestack::Ui::Page

  def response
    # ...
    bs_section_card do
      bs_smart_collection collection_config
    end
    # ...
  end

  def collection_config
    {
      id: 'orders',
      # Active Record query:
      items: Order.includes(:customer, :order_items).all,
      paginate: 10,
      rerender_on: "success",
      columns: {
        # just render the ID:
        id: 'ID',
        # render an attribute of a child model:
        'customer.last_name': {
          # use a specific table column heading:
          heading: 'Customer Name'
        },
        price_in_euro: {
          heading: 'Price in €',
          # transform the column content with a Proc:
          format: -> (column_data){ "#{column_data} €" },
          text: :right
        }
      },
      filters: {
        'customer.last_name': {
          placeholder: 'Filter by Customer Name',
          match: :starts_with,
        }
      },
      slots: {
        # inject a method which defines the per row actions:
        table_item_actions: method(:table_item_actions)
      }
    }
  end

  def table_item_actions order
    slot do
      transition path: edit_dummy_order_path(order), delay: 300 do
        bs_btn outline: true, size: :sm, variant: :primary do
          bs_icon name: 'arrow-right', size: 20
        end
      end
    end
  end


end

```

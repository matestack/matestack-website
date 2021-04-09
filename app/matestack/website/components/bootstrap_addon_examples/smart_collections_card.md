`app/matestack/my_admin/pages/products/index.rb`

```ruby

class MyAdmin::Pages::Products::Index < Matestack::Ui::Page

  def response
    # ...
    bs_section_card do
      bs_smart_collection collection_config
    end
    # ...
  end

  def collection_config
    {
      id: 'products',
      items: Product.all,
      paginate: 9,
      rerender_on: "success",
      filters: {
        name: {
          placeholder: 'Filter by Name',
          match: :like
        },
      },
      slots: {
        collection_rendering: method(:collection_rendering)
      }
    }
  end

  def collection_rendering products
    slot do
      bs_row do
        products.each do |product|
          bs_col xl: 4, class: "mb-3" do
            collection_card product
          end
        end
      end
    end
  end

  def collection_card product
    bs_card title: product.name, subtitle: "#{product.price_in_euro} €", class: "h-100" do
      paragraph product.description, class: "fw-lighter"
      transition path: edit_dummy_product_path(product), delay: 300 do
        bs_btn outline: true, size: :sm, variant: :primary do
          bs_icon name: 'arrow-right', size: 20
        end
      end
      action product_delete_action_config(product) do
        bs_btn outline: true, size: :sm, variant: :danger do
          bs_icon name: 'trash2', size: 20
        end
      end
    end
  end

  def product_delete_action_config product
    {
      method: :delete,
      path: dummy_product_path(id: product.id),
      confirm: true,
      success: {
        emit: "success"
      }
    }
  end


end

```

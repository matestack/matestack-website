`app/matestack/my_admin/app.rb`

```ruby

class MyAdmin::App < Matestack::Ui::Bootstrap::Apps::AdminTemplate

  # the response method is defined by the parent class
  # you just need to pass in some configuration using the methods below
  # it's still possible to overwrite and adjust the response method
  # defined in the parent class

  def sidebar_top_partial
    div class: "text-center" do
      transition path: root_path, delay: 300 do
        heading size: 4, text: "Your Rails Backend"
      end
    end
    div class: "text-center my-5" do
      bs_avatar img_path: asset_pack_url('media/images/avatar-placeholder.png')
      div class: "my-3" do
        plain current_admin.email
      end
    end
  end

  def sidebar_navigation_items
    [
      { type: :transition, path: dummy_dashboard_path, text: "Dashboard", icon: "columns-gap" },
      { type: :transition, path: dummy_products_path, text: "Products", icon: "box" },
      { type: :transition, path: dummy_customers_path, text: "Customers", icon: "people-fill" },
      { type: :transition, path: dummy_orders_path, text: "Orders", icon: "cart-check-fill"},
    ]
  end

  def toasts
    [
      { show_on: "failure", class: "bg-danger text-white", body: "Error!" },
      { show_on: "success", class: "bg-primary text-white", body: "Success!" },
    ]
  end

end

```

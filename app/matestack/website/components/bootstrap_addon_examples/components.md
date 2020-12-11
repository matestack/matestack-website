`app/matestack/my_admin/pages/customer/index.rb`

```ruby

class MyAdmin::Pages::Customer::Index < Matestack::Ui::Page

  def response
    container do
      row do
        Customer.last(6).each do |customer|
          col sm: 4, class: "mt-3" do
            card_for(customer)
          end
        end
      end
    end
  end

  def card_for customer
    card title: customer.name, img_path: asset_pack_url('.../xyz.png'), class: "shadow-sm" do
      card_body_for(customer)
    end
  end

  def card_body_for customer
    small class: "mb-3" do
      b text: "Email:"
      plain customer.email
    end
    if current_user.is_super_admin?
      transition path: form_path(id: customer.id) do
        btn size: :sm, text: "edit", class: "mt-3"
      end
    end
  end

end

```

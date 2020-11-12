`app/matestack/my_admin/pages/dashboard.rb`

```ruby

class MyAdmin::Pages::Dashboard < Matestack::Ui::Page

  def response
    container do
      row do
        Person.all.each do |person|
          col sm: 4, class: "mt-3" do
            card_for(person)
          end
        end
      end
    end
  end

  def card_for person
    card title: person.name, img_path: asset_pack_url('.../xyz.png'), class: "shadow-sm" do
      card_body_for(person)
    end
  end

  def card_body_for person
    div class: "px-3 pb-3" do
      small do
        b text: "Email:"
        plain person.email
      end
      br
      if current_user.is_super_admin?
        transition path: form_path(id: person.id) do
          btn size: :sm, text: "edit", class: "mt-3"
        end
      end
    end
  end

end

```

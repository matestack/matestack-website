`app/matestack/my_admin/components/dashboard/revenue.rb`

```ruby

class MyAdmin::Components::Dashboard::Products < Matestack::Ui::Component

  def response
    bs_section_card title: t("..."), subtitle: t("...") do
      bs_row do
        bs_col xl: 6 do
          text_kpis_partial
        end
        bs_col xl: 6, class: "py-3" do
          chart_kpis_partial
        end
      end
    end
  end

  protected

    # ...

    def chart_kpis_partial
      bs_chart type: :doughnut,
        datasets: [
          {
            data: top_5_product_values,
            backgroundColor: [:primary, :secondary, :blue, :indigo, :info]
          },
        ],
        labels: top_5_product_names
    end

    def top_5_products
      OrderItem
        .group(:product_id)
        .sum(:price_in_euro)
        .sort_by{|k, v| v}
        .reverse
        .first(5)
    end

    def top_5_product_values
      top_5_products
        .map { |product_id, value| value }
    end

    def top_5_product_names
      top_5_products
        .map { |product_id, value| Product.find(product_id).name }
    end

end
```

`app/matestack/my_admin/dashboard/show.rb`

```ruby

class MyAdmin::Pages::Dashboard::Show < Matestack::Ui::Page

  def response
    page_heading title: t("dashboard.title"), subtitle: t("dashboard.subtitle")
    row do
      col md: 6 do
        analytics_partial
      end
      col md: 6 do
        activity_partial
      end
    end
  end

  def analytics_partial
    async defer: 300, id: "products-card" do
      dashboard_products
    end
    async defer: 600, id: "revenue-card" do
      dashboard_revenue
    end
  end

  def activity_partial
    row do
      col do
        async defer: 900, rerender_on: "activity-tracked", id: "activity-card" do
          dashboard_activity
        end
      end
    end
  end

end

```

`app/matestack/my_admin/components/dashboard/revenue.rb`

```ruby

# registered as `dashboard_revenue` via component registry

class MyAdmin::Components::Dashboard::Revenue < Matestack::Ui::Component

  def response
    section_card title: t("dashboard.revenue.title"), subtitle: t("dashboard.revenue.subtitle") do
      row do
        col xl: 6 do
          text_kpis_partial
        end
        col xl: 6, class: "py-3" do
          chart_kpis_partial
        end
      end
    end
  end

  # ...

end

```

`app/matestack/my_admin/app.rb`

```ruby

class MyAdmin::App < Matestack::Ui::Bootstrap::LayoutWithSidebar

  # the response method is defined by the parent class
  # you just need to pass in some configuration using the methods below
  # it's still possible to overwrite and adjust the response
  # defined in the parent class

  def logo_path
    "path/to/custom/logo.png"
  end

  def header_navigation_items
    [
      { type: :transition, path: link_1_path, text: "Link 1" },
      { type: :transition, path: link_2_path, text: "Link 2" },
      { type: :link, path: some_external_path, text: "Link 3", variant: :primary }
    ]
  end

  def sidebar_navigation_header_text
    "Sidebar Heading"
  end

  def sidebar_navigation_items
    [
      { type: :transition, path: link_4_path, text: "Link 4", icon: "some-icon-key" },
      { type: :transition, path: link_5_path, text: "Link 5", icon: "some-icon-key" },
      #...
    ]
  end

end

```

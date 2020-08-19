module Components::Registry

  Matestack::Ui::Core::Component::Registry.register_components(
    slick_slider: Components::Slick::Slider,
    markdown: Components::Markdown::Markdown
  )

end

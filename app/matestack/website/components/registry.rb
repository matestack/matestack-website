module Website::Components::Registry

  Matestack::Ui::Core::Component::Registry.register_components(
    website_layout_header: Website::Components::Layout::Header,
    website_layout_footer: Website::Components::Layout::Footer,
    website_hero_section: Website::Components::HeroSection,
    website_sub_hero_section: Website::Components::SubHeroSection,
    website_examples_section: Website::Components::ExamplesSection,
    website_features_section: Website::Components::FeaturesSection,
    website_support_section: Website::Components::SupportSection,
    website_addons_section: Website::Components::AddonsSection,
    website_indepth_guides_section: Website::Components::IndepthGuidesSection,
    website_services_section: Website::Components::ServicesSection,
    website_team_section: Website::Components::TeamSection,
    website_getting_started_section: Website::Components::GettingStartedSection,
    website_newsletter_section: Website::Components::NewsletterSection,
    example_slide_1: Website::Components::ExampleSlides::Slide1,
    example_slide_2: Website::Components::ExampleSlides::Slide2,
    example_slide_3: Website::Components::ExampleSlides::Slide3,
    my_card_component: Website::Components::ExampleSlides::MyCardComponent,
    example_slide_4: Website::Components::ExampleSlides::Slide4,
    example_slide_5: Website::Components::ExampleSlides::Slide5,
    example_slide_6: Website::Components::ExampleSlides::Slide6,
    example_slide_7: Website::Components::ExampleSlides::Slide7,
    my_vue_js_component: Website::Components::ExampleSlides::MyVueJsComponent,
    website_legal_imprint: Website::Components::Legal::Imprint,
    website_legal_privacy: Website::Components::Legal::Privacy
  )

end

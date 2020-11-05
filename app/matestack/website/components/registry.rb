module Website::Components::Registry

  Matestack::Ui::Core::Component::Registry.register_components(
    website_layout_header: Website::Components::Layout::Header,
    website_layout_footer: Website::Components::Layout::Footer,
    website_hero_section: Website::Components::HeroSection,
    website_sub_hero_section: Website::Components::SubHeroSection,
    website_components_examples_section: Website::Components::ComponentsExamplesSection,
    website_reactivty_examples_section: Website::Components::ReactivityExamplesSection,
    website_spa_examples_section: Website::Components::SpaExamplesSection,
    website_features_section: Website::Components::FeaturesSection,
    website_support_section: Website::Components::SupportSection,
    website_addons_section: Website::Components::AddonsSection,
    website_bootstrap_access_section: Website::Components::BootstrapAccessSection,
    website_bootstrap_description_section: Website::Components::BootstrapDescriptionSection,
    website_bootstrap_features_section: Website::Components::BootstrapFeaturesSection,
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

  Matestack::Ui::Core::Component::Registry.register_components(
    bootstrap_card_component: Website::Components::ExampleSlides::ComponentsExamples::BootstrapCardComponent,
    blue_bootstrap_card_component: Website::Components::ExampleSlides::ComponentsExamples::BlueBootstrapCardComponent,
    components_example_slide_1: Website::Components::ExampleSlides::ComponentsExamples::Slide1,
    components_example_slide_2: Website::Components::ExampleSlides::ComponentsExamples::Slide2,
    components_example_slide_3: Website::Components::ExampleSlides::ComponentsExamples::Slide3,
    components_example_slide_4: Website::Components::ExampleSlides::ComponentsExamples::Slide4,
    components_example_slide_5: Website::Components::ExampleSlides::ComponentsExamples::Slide5,
    components_example_slide_6: Website::Components::ExampleSlides::ComponentsExamples::Slide6,
    components_example_slide_7: Website::Components::ExampleSlides::ComponentsExamples::Slide7
  )

  Matestack::Ui::Core::Component::Registry.register_components(
    reactivity_example_slide_1: Website::Components::ExampleSlides::ReactivityExamples::Slide1,
    reactivity_example_slide_2: Website::Components::ExampleSlides::ReactivityExamples::Slide2,
    reactivity_example_slide_3: Website::Components::ExampleSlides::ReactivityExamples::Slide3,
    reactivity_example_slide_4: Website::Components::ExampleSlides::ReactivityExamples::Slide4,
    reactivity_example_slide_5: Website::Components::ExampleSlides::ReactivityExamples::Slide5,
    reactivity_example_slide_6: Website::Components::ExampleSlides::ReactivityExamples::Slide6,
  )

  Matestack::Ui::Core::Component::Registry.register_components(
    spa_example_slide_1: Website::Components::ExampleSlides::SpaExamples::Slide1,
    spa_example_slide_2: Website::Components::ExampleSlides::SpaExamples::Slide2,
    spa_example_slide_3: Website::Components::ExampleSlides::SpaExamples::Slide3,
  )

end

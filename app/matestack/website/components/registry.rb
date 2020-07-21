module Website::Components::Registry

  Matestack::Ui::Core::Component::Registry.register_components(
    website_layout_header: Website::Components::Layout::Header,
    website_hero_section: Website::Components::HeroSection,
    website_sub_hero_section: Website::Components::SubHeroSection,
    website_examples_section: Website::Components::ExamplesSection,
    website_features_section: Website::Components::FeaturesSection,
    website_support_section: Website::Components::SupportSection,
    website_services_section: Website::Components::ServicesSection,
    website_team_section: Website::Components::TeamSection,
    website_getting_started_section: Website::Components::GettingStartedSection,
    website_newsletter_section: Website::Components::NewsletterSection
  )

end

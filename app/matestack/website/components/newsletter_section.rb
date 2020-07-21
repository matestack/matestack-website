class Website::Components::NewsletterSection < Matestack::Ui::StaticComponent

  def response
    section class: "newsletter-section mt-3 pb-5" do
      intro
      newsletter_form
    end
  end

  def intro
    div class: 'row' do
      div class: 'offset-md-3 col-sm-6 pt-5 text-center' do
        heading size: 2, class: "mt-5", text: t("landing_page.newsletter.title")
      end
    end
  end

  def newsletter_form
    div class: 'row' do
      div class: 'offset-md-3 col-sm-6 pt-5 text-center' do
        plain "TODO: newsletter form"
      end
    end
  end

end

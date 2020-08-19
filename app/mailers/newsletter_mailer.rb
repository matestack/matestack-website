class NewsletterMailer < ApplicationMailer
  default from: 'info@matestack.io'

  def confirm_email
    @newsletter_subscriber = params[:newsletter_subscriber]
    base_url = "https://matestack.io" if Rails.env.production?
    base_url = "http://localhost:3000" if Rails.env.development?
    @confirm_url = "#{base_url}/newsletter_confirm?token=#{@newsletter_subscriber.token}"
    @cancel_url = "#{base_url}/newsletter_cancel?token=#{@newsletter_subscriber.token}"
    mail(to: @newsletter_subscriber.email, subject: 'Confirm matestack newsletter subscription')
  end
end

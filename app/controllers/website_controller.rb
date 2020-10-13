class WebsiteController < ApplicationController

  include Website::Components::Registry

  matestack_app Website::App

  def landing_page
    render Website::Pages::LandingPage
  end

  def imprint
    render Website::Pages::Imprint
  end

  def privacy
    render Website::Pages::Privacy
  end

  def newsletter_signup
    errors = {}

    if (newsletter_params[:email] =~ URI::MailTo::EMAIL_REGEXP) != 0
      errors[:email] = ["invalid mail"]
    end

    if errors.any?
      render json: {
        errors: errors,
        message: "Data was not saved, please check form!"
      }, status: 422
    else
      newsletter_subscriber = NewsletterSubscriber.create(newsletter_params)
      unless newsletter_subscriber.errors.any?
        NewsletterMailer.with(newsletter_subscriber: newsletter_subscriber).confirm_email.deliver_now
        render json: { message: "Submitted successfully" }, status: 200
      end
    end
  end

  def newsletter_confirm
    newsletter_subscriber = NewsletterSubscriber.find_by(token: params[:token])
    if newsletter_subscriber.present?
      newsletter_subscriber.update_attributes(confirmed: true)
      render Website::Pages::Newsletter::Confirmed, matestack_app: false
    else
      render Website::Pages::Newsletter::ConfirmError, matestack_app: false
    end
  end

  def newsletter_cancel
    newsletter_subscriber = NewsletterSubscriber.find_by(token: params[:token])
    if newsletter_subscriber.present?
      newsletter_subscriber.destroy
      render Website::Pages::Newsletter::Canceled, matestack_app: false
    else
      render Website::Pages::Newsletter::CancelError, matestack_app: false
    end
  end

  protected

  def newsletter_params
    params.require(:newsletter).permit(:name, :email)
  end

end

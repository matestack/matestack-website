class Website::Components::NewsletterSection < Matestack::Ui::Component

  def response
    section class: "newsletter-section" do
      div class: 'container-fluid' do
        div class: 'row bg-blue align-items-center' do
          div class: "container" do
            div class: "row" do
              div class: 'col-md-6 pt-5' do
                heading size: 3, class: 'text-white', text: t("landing_page.newsletter.title")
                br class:'d-none d-sm-none d-md-block'
                paragraph class: 'text-white', text: t("landing_page.newsletter.description")
              end
              div class: 'col-md-6' do
                newsletter_form
              end
            end
            div class: 'row d-none d-sm-none d-md-block' do
              br
            end
          end
        end
      end
    end
  end

  def newsletter_form
    div class: 'form-wrapper shadow-sm p-5 mb-5 bg-white rounded' do
      toggle hide_on: "form_succeeded" do
        heading size: 3, class: 'custom-form-headline', text:  t("landing_page.newsletter.form.title")
        form newsletter_form_config do
          form_input class: 'form-control bg-light', id: 'form-name', key: :name, type: :text, label:  t("landing_page.newsletter.form.name_label")
          form_input class: 'form-control bg-light', id: 'form-email', key: :email, type: :email, label: t("landing_page.newsletter.form.email_label")
          br
          form_submit  do
            toggle show_on: "form_submitted", hide_on: "form_succeeded, form_failed" do
              button class: 'btn btn-primary', id: 'submit-btn', text:  "submitting...", disabled: true
            end
            toggle init_show: true, show_on: "form_succeeded, form_failed", hide_on: "form_submitted" do
              button class: 'btn btn-primary', id: 'submit-btn', text:  t("landing_page.newsletter.form.submit_text")
            end
          end
        end
      end
      toggle show_on: "form_succeeded" do
        div class: 'text-center mb-5' do
          heading size: 3, text:  t("landing_page.newsletter.form.success_heading")
          paragraph class: "mt-5", text: t("landing_page.newsletter.form.success_description")
        end
      end
    end
  end

  def newsletter_form_config
    {
      for: :newsletter,
      method: :post,
      path: :newsletter_signup_path,
      emit: "form_submitted",
      success: {
        emit: "form_succeeded"
      },
      failure: {
        emit: "form_failed"
      }
    }
  end

end

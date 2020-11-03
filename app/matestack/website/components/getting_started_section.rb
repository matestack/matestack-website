class Website::Components::GettingStartedSection < Matestack::Ui::Component

  def response
    section class: "getting-started-section mt-5 pb-5" do
      intro
      next_steps
    end
  end

  def intro
    div class: 'row mx-0' do
      div class: 'offset-md-3 col-sm-6 pt-5 text-center' do
        heading size: 2, class: "mt-5", text: t("landing_page.getting_started.title")
      end
    end
  end

  def next_steps
    div class: 'row mx-0 mb-5 justify-content-center' do
      div class: 'col-sm-3 pt-5 text-center text-sm-right' do
        link path: "https://discord.gg/c6tQxFG", target: "_blank" do
          button class: "btn btn-secondary small-padding", text: t("landing_page.getting_started.weekly_qa_1")
        end
        br times: 2
        link path: "https://discord.gg/c6tQxFG", target: "_blank" do
          button class: "btn btn-secondary small-padding", text: t("landing_page.getting_started.weekly_qa_2")
        end
        br times: 2
        link path: "https://docs.matestack.io" do
          button class: "btn btn-primary small-padding", text: t("landing_page.getting_started.getting_started_cta")
        end
      end
      div class: 'col-sm-3 pt-5 text-center text-sm-left' do
        div class: "details w-75 mx-auto" do
          div class: "detail w-25 pt-2" do
            img path: asset_pack_url('media/images/github-logo.png'), width: "35px"
          end
          div class: "detail w-25" do
            link path: "https://github.com/matestack/matestack-ui-core" do
              small text: t("landing_page.getting_started.github_stars")
              br
              small text: t("landing_page.getting_started.github_stars_text")
            end
          end
          div class: "detail w-25" do
            link path: "https://github.com/matestack/matestack-ui-core" do
              small text: t("landing_page.getting_started.version_text")
              br
              small text: t("landing_page.getting_started.version")
            end
          end
          div class: "detail w-25" do
            link path: "https://github.com/matestack/matestack-ui-core" do
              small text: t("landing_page.getting_started.licencse")
              br
              small text: t("landing_page.getting_started.licencse_text")
            end
          end
        end
      end
    end
  end



end

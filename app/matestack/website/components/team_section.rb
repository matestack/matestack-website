class Website::Components::TeamSection < Matestack::Ui::Component

  def response
    section class: "team-section mt-3 pb-5" do
      team_intro
      team_slider
      team_join
    end
  end

  def team_intro
    div class: 'row' do
      div class: 'offset-md-3 col-sm-6 pt-5 text-center' do
        heading size: 2, class: "mt-5", text: t("landing_page.team.title")
      end
    end
  end

  def team_slider
    div class: 'row justify-content-center' do
      div class: 'col-12 col-md-8 pt-5 text-center' do
        slick_slider do
          t("landing_page.team.members").each do |key, infos|
            member_slide infos
          end
        end
      end
    end
  end

  def member_slide infos
    div class: "slider-item team-slider" do
      div class: "row justify-content-center" do
        div class: "col-lg-6" do
          img path: asset_pack_url("media/images/#{infos[:img_path]}"), class: "member-img rounded-circle mx-auto mb-3"
        end
        div class: "col-lg-6 text-center text-lg-left" do
          heading size: 5, text: infos[:name]
          small text: infos[:role]
          br
          if infos[:twitter_handle]
            link path: "https://twitter.com/#{infos[:twitter_handle]}", target: "_blank" do
              small text: infos[:twitter_handle]
            end
            br times: 2
          end
          # small text: infos[:description]
        end
      end
    end
  end

  def team_join
    div class: 'row' do
      div class: 'offset-md-3 col-sm-6 pt-5 text-center' do
        link path: "https://github.com/matestack/matestack-ui-core" do
          button class: "btn btn-secondary small-padding", text: t("landing_page.team.core_contributors")
        end
        link path: "mailto:jonas@matestack.io" do
          button class: "btn btn-primary small-padding", text: t("landing_page.team.join_team_cta")
        end
      end
    end
  end



end

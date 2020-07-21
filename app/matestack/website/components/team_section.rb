class Website::Components::TeamSection < Matestack::Ui::StaticComponent

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
    div class: 'row' do
      div class: 'offset-md-3 col-sm-6 pt-5 text-center' do
        plain "TODO: team slider"
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

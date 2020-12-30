class Website::Components::VideosSection < Matestack::Ui::Component

  def response
    section class: "videos-section" do
      div class: 'row mt-5 justify-content-center' do
        div class: 'col col-md-6 pt-5 text-center' do
          youtube height: "350px", width: "100%", youtube_id: 'Mue5gs6Wtq4', start_at: 0, privacy_mode: true
        end
      end
    end
  end

end

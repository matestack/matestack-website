class Website::Pages::Newsletter::Confirmed < Matestack::Ui::Page

  def response
    div class: "container" do
      div class: "row" do
        div class: "col text-center mt-5 pt-5" do
          heading size: 3, text: "Your subscription was confirmed successfully!"
          link path: :root_path do
            img path: asset_pack_url('media/images/matestack-logo-red.png'), height: "50px"
          end
        end
      end
    end
  end

end

class Website::Components::CaseStudiesSection < Matestack::Ui::Component

  def response
    section class: "case-studies-section" do
      div class: "container" do
        div class: 'row mt-5' do
          div class: 'col text-center' do
            heading size: 3, text: t("services.case_studies.title")
          end
        end
        abc_partial
        workey_partial
      end
    end
  end

  def abc_partial
    div class: 'row py-5' do
      div class: 'col-lg-5 col-md-5 col-sm-12  text-center' do
        img class: "mt-5 w-75 shadow rounded-lg", path: asset_pack_url("media/images/#{t('services.case_studies.abc.img_path')}")
      end
      div class: 'services-text col-lg-7 col-md-7 col-sm-12 pt-5' do
        heading size: 4, text: t("services.case_studies.abc.title")
        small text: t("services.case_studies.abc.category")
        br times: 2
        paragraph class: 'paragraph-margin', text: t("services.case_studies.abc.text_1")
        paragraph class: 'paragraph-margin', text: t("services.case_studies.abc.text_2")
      end
    end
  end

  def workey_partial
    div class: 'row py-5' do
      div class: 'services-text col-lg-7 col-md-7 col-sm-12 pt-5' do
        heading size: 4, text: t("services.case_studies.workey.title")
        small text: t("services.case_studies.workey.category")
        br times: 2
        paragraph class: 'paragraph-margin', text: t("services.case_studies.workey.text_1")
        paragraph class: 'paragraph-margin', text: t("services.case_studies.workey.text_2")
      end
      div class: 'col-lg-5 col-md-5 col-sm-12  text-center' do
        img class: "mt-5 h-50 shadow rounded-lg", path: asset_pack_url("media/images/#{t('services.case_studies.workey.img_path')}")
      end
    end
  end



end

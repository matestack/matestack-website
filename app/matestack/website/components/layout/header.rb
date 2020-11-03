class Website::Components::Layout::Header < Matestack::Ui::VueJsComponent

  vue_js_component_name "website-layout-header"

  def response
    header do
      nav class:'navbar navbar-expand-lg navbar-light fixed-top', attributes:
      { "v-bind:class": "{'show-header-shadow': showHeaderShadow}" } do
        div class: "container" do
          logo
          toggler
          nav_items
        end
      end
    end
  end

  def logo
    transition class:'navbar-brand', delay: 500, path: :root_path do
      img alt: t('header.logo_alt_text'),
        path: asset_pack_url('media/images/matestack-logo-red.png')
    end
  end

  def toggler
    button class:'navbar-toggler', attributes: {
      "data-target":'#nav-items',
      "data-toggle":'collapse'
    }, type:'button' do
      span class:'sr-only' do plain "Toggle navigation" end
      span class:'navbar-toggler-icon'
    end
  end

  def nav_items
    div class:'collapse navbar-collapse', id:'nav-items' do
      ul class:'navbar-nav ml-auto align-items-center' do

        li class: 'nav-item my-3 my-md-0' do
          link class: 'btn btn-secondary small-padding',
            path: "https://discord.gg/c6tQxFG",
            text: t('header.nav.discord'),
            target: "_blank"
        end
        li class: 'nav-item my-3 my-md-0' do
          link class: 'btn btn-secondary small-padding',
            path: "https://github.com/matestack",
            text: t('header.nav.github'),
            target: "_blank"
        end
        li class: 'nav-item my-3 my-md-0' do
          link class: 'btn btn-primary small-padding',
            path: "https://docs.matestack.io",
            text: t('header.nav.docs'),
            target: "_blank"
        end

      end
    end
  end

end

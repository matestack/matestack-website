class Website::Components::Layout::Header < Matestack::Ui::DynamicComponent

  def vuejs_component_name
    "website-layout-header"
  end

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
    link class:'navbar-brand', path: :root_path do
      # plain image_pack_tag('matestack_logo_orange.png')
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

        li class: 'nav-item' do
          link class: 'btn btn-secondary small-padding', path: :root_path,
          params: { anchor: :support },
          attributes: { "@click.prevent": "scrollTo(\"support\")" } do
            plain t('header.nav.support')
          end
        end
        li class: 'nav-item' do
          link class: 'btn btn-primary small-padding', path: :root_path,
          params: { anchor: :services },
          attributes: { "@click.prevent": "scrollTo(\"support\")" } do
            plain t('header.nav.book')
          end
        end

      end
    end
  end

end

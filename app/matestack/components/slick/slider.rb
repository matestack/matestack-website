class Components::Slick::Slider < Matestack::Ui::VueJsComponent

  vue_js_component_name "slick-slider"

  def prepare
    @slider_id = SecureRandom.hex
    @component_config[:slider_id] = @slider_id
    @component_config[:slides_to_show] = @options[:slides_to_show] ||= 1
    @component_config[:slides_to_scroll] = @options[:slides_to_scroll] ||= 1
    @options[:dots] = true if @options[:dots].nil?
    @component_config[:dots] = @options[:dots]
    @component_config[:arrows] = @options[:arrows]
    @options[:autoplay] = false if @options[:autoplay].nil?
    @component_config[:autoplay] = @options[:autoplay]
  end

  def response
    div class: "slider-wrapper #{'with-arrows' if @options[:arrows]} #{'with-dots' if @options[:dots]}" do
      div id: @slider_id do
        yield_components
      end
    end
  end


end

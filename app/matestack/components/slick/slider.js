import 'slick-carousel'
import $ from 'jquery'

MatestackUiCore.Vue.component('slick-slider', {
  mixins: [MatestackUiCore.componentMixin],
  data: function data() {
    return {};
  },
  mounted: function(){
    var self = this;
    setTimeout(function () {
      $('#' + self.componentConfig["slider_id"]).slick(
        {
          slidesToShow: self.componentConfig["slides_to_show"],
          slidesToScroll: self.componentConfig["slides_to_scroll"],
          dots: self.componentConfig["dots"],
          arrows: self.componentConfig["arrows"],
          autoplay: self.componentConfig['autoplay'],
          autoplaySpeed: 6000,
        }
      );
    }, 100);
  }
});

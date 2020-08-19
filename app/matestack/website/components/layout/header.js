MatestackUiCore.Vue.component('website-layout-header', {
  mixins: [MatestackUiCore.componentMixin],
  data() {
    return {
      showHeaderShadow: false
    }
  },
  methods: {
    handleScroll(event) {
      if (window.scrollY > 60){
        this.showHeaderShadow = true
      } else {
        this.showHeaderShadow = false
      }
    },
    scrollTo(id) {
      setTimeout(() => {
        if(document.getElementById(id) == undefined){
          location.href = `/#${id}`
        }else{
          document.getElementById(id).scrollIntoView({behavior: "smooth", block: "nearest"});
        }
      }, 150)
    }
  },
  created() {
    window.addEventListener('scroll', this.handleScroll);
  },
  destroyed(){
    window.removeEventListener('scroll', this.handleScroll);
  }

});

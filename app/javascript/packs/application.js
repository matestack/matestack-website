// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
// require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import $ from 'jquery';
import 'popper.js'
import 'bootstrap'

import MatestackUiCore from 'matestack-ui-core'

import 'stylesheets/application'

import '../../matestack/components/slick/slider.js'
import '../../matestack/website/components/layout/header.js'
import '../../matestack/website/components/example_slides/reactivity_examples/my_vue_js_component.js'

const images = require.context('../images', true)
const imagePath = (name) => images(name, true)

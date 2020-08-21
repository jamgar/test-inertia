// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import '../stylesheets/application.scss'

//require("@rails/ujs").start()
//require("turbolinks").start()
//require("@rails/activestorage").start()
//require("channels")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
import Vue from 'vue'
import { InertiaApp } from '@inertiajs/inertia-vue'

import Routes from './app_routes.js'
Vue.prototype.$routes = Routes

const app = document.getElementById('app')

new Vue({
  render: h => h(InertiaApp, {
    props: {
      initialPage: JSON.parse(app.dataset.page),
			resolveComponent: name => require(`@/Pages/${name}`).default
    },
  }),
}).$mount(app)

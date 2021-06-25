import Vue from 'vue'

# Vue Visual
import VueVisual from 'vue-visual'
import 'vue-visual/index.css'
Vue.component 'vue-visual', VueVisual

# Flicking
import VueFlicking from "@egjs/vue-flicking";
import "@egjs/vue-flicking/dist/flicking.css";
Vue.use(VueFlicking);

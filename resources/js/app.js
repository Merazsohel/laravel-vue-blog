require('./bootstrap');

//import Vue from 'vue/dist/vue.min.js'
window.Vue = require('vue');

// Markdown Editor
import 'v-markdown-editor/dist/index.css';

import Editor from 'v-markdown-editor'

// global register
Vue.use(Editor);


//VueX

import Vuex from 'vuex'

Vue.use(Vuex)

import storeData from './store/index'

const store = new Vuex.Store(
        storeData
)

//Moment JS

import {filter} from './filter'


//Vue Router

import VueRouter from 'vue-router'

Vue.use(VueRouter)

import {routes} from './routes';


Vue.component('admin-main', require('./components/admin/adminMaster').default)
Vue.component('home-main', require('./components/public/PublicMaster').default)

//V-Form

import { Form, HasError, AlertError } from 'vform'


Vue.component(HasError.name, HasError)
Vue.component(AlertError.name, AlertError)
window.Form = Form;

// Sweet alert 2
import swal from 'sweetalert2'
window.swal = swal;
const toast = swal.mixin({
    toast: true,
    position: 'top-end',
    showConfirmButton: false,
    timer: 3000
});

window.toast = toast



const router = new VueRouter({
    routes, // short for `routes: routes`
    mode: 'hash'
})

const app = new Vue({
    el: '#app',
    router,
    store
});

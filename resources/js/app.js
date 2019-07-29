require('./bootstrap');

window.Vue = require('vue');

//VueX

import Vuex from 'vuex'

Vue.use(Vuex)

import storeData from './store/index'

const store = new Vuex.Store(
        storeData
)

//Vue Router

import VueRouter from 'vue-router'

Vue.use(VueRouter)

import {routes} from './routes';


Vue.component('admin-main', require('./components/admin/AdminMaster.vue').default);

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

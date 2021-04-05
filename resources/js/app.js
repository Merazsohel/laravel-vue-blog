require('./bootstrap');

window.Vue = require('vue');
import 'v-markdown-editor/dist/index.css';
import Editor from 'v-markdown-editor'
import Vuex from 'vuex'
import VueRouter from 'vue-router'
import storeData from './store/index'
import {routes} from './routes';
import { Form, HasError, AlertError } from 'vform'
import swal from 'sweetalert2'

Vue.use(Editor);
Vue.use(Vuex)
Vue.use(VueRouter)
Vue.component('admin-main', require('./components/admin/adminMaster').default)
Vue.component('home-main', require('./components/public/PublicMaster').default)
Vue.component(HasError.name, HasError)
Vue.component(AlertError.name, AlertError)

const store = new Vuex.Store(
        storeData
)

window.Form = Form;

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

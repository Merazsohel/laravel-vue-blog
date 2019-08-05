import AdminHome from './components/admin/AdminHome.vue'

//Category

import CategoryList from './components/admin/category/List'
import AddCategory from './components/admin/category/New'
import EditCategory from './components/admin/category/Edit'

//Post

import PostList from './components/admin/post/List'
import AddPost from './components/admin/post/New'
import EditPost from './components/admin/post/Edit'

//FrontEnd

import PublicHome from './components/public/PublicHome'
import BlogPost from './components/public/blog/BlogPost'


export const routes = [
    {
        path: '/home',
        component: AdminHome
    },

    //Category

    {
        path: '/category-list',
        component: CategoryList
    },

    {
        path: '/add-category',
        component: AddCategory
    },

    {
        path: '/edit-category/:categoryid',
        component: EditCategory
    },

    //Post

    {
        path: '/post-list',
        component: PostList
    },

    {
        path: '/add-post',
        component: AddPost
    },

    {
        path: '/edit-post/:postid',
        component: EditPost
    },

    //FrontEnd

    {
        path: '/',
        component: PublicHome
    },

    {
        path: '/blog',
        component: BlogPost
    },

]

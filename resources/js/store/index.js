export default {
    state:{
        category:[],
        post:[],
        blogpost:[],
        singlepost:[],
        allcategories:[],
        latestpost:[]
    },
    getters:{
        getCategory(state){
            return state.category
        },
        getAllPost(state){
            return state.post
        },
        getblogPost(state){
            return state.blogpost
        },
        singlepost(state){
            return state.singlepost
        },
        allcategories(state){
            return state.allcategories
        },
        latestpost(state){
            return state.latestpost
        },
    },
    actions:{
        allCategory(context){
            axios.get('/category')
                .then((response)=>{
                   context.commit('categories',response.data.categories)
                })
        },
        getAllPost(context){
            axios.get('/post')
                .then((response)=>{
                    context.commit('allpost',response.data.posts)
                })
        },

        getblogPost(context){
            axios.get('/blogpost')
                .then((response)=>{
                    context.commit('getblogPost',response.data.posts)
                })
        },

        getPostById(context,payload){
            axios.get('/singlepost/'+payload)
                .then((response)=>{
                    context.commit('singlepost',response.data.post)
                })
        },

        allcategories(context){
            axios.get('/categories/')
                .then((response)=>{
                    context.commit('allcategories',response.data.categories)
                })
        },

        getPostByCatId(context,payload){
            axios.get('/categorypost/'+payload)
                .then((response)=>{
                    context.commit('getPostByCatId',response.data.posts)
                })
        },
        SearchPost(context,payload){
            axios.get('/search?s='+payload)
                .then((response)=>{
                    context.commit('getSearchPost',response.data.posts)
                })
        },
        latestPost(context){
            axios.get('/latestpost')
                .then((response)=>{
                    context.commit('latestpost',response.data.posts)
                })
        }
    },
    mutations:{
        categories(state,data){
             state.category = data
        },
        allpost(state,data){
            state.post = data
        },
        getblogPost(state,payload){
            return state.blogpost = payload
        },
        singlepost(state,payload){
            state.singlepost = payload
        },
        allcategories(state,payload){
            state.allcategories = payload
        },

        getPostByCatId(state,payload){
            state.blogpost = payload
        },
        getSearchPost(state,payload){
            state.blogpost = payload
        },
        latestpost(state,payload){
            state.latestpost = payload
        },
    }
}
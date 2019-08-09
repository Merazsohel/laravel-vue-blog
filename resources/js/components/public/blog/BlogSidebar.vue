<template>
    <span>
          <div class="span4">
            <aside class="right-sidebar">
              <div class="widget">
                <form class="form-search">
                  <input placeholder="Type something" @keyup="RealSearch" type="text" v-model="keyword" class="input-medium search-query">
                  <button type="submit" @click.prevent="RealSearch" class="btn btn-square btn-theme" >Search</button>
                </form>
              </div>
              <div class="widget">
                <h5 class="widgetheading">Categories</h5>
                <ul class="cat">
                  <li v-for="category in allcategories"><i class="icon-angle-right"></i><router-link :to="`/categories/${category.id}`">{{category.cat_name}}</router-link></li>

                </ul>
              </div>
              <div class="widget">
                <h5 class="widgetheading">Latest Post</h5>
                <ul class="recent">

                  <li v-for="(post,index) in blogpost" v-if="index < 1">
                    <img :src="`uploadimage/${post.photo}`" class="pull-left" alt="" />
                    <h6><router-link :to="`/blog/${post.id}`">{{post.title}}</router-link></h6>
                    <p>
                     {{post.description | sortlength(100,"...")}}
                    </p>
                  </li>

                </ul>
              </div>

            </aside>
          </div>
    </span>
</template>

<script>
  import _ from 'lodash'
    export default {
        name: "blog-sidebar",
        data(){
          return{
              keyword: ''
            }
        },
        computed:{
        allcategories(){
            return this.$store.getters.allcategories
        },

        blogpost(){
            return this.$store.getters.latestpost
        }
        },

        mounted(){
            this.$store.dispatch('latestPost')
            this.$store.dispatch('allcategories')
        },
        methods:{
            RealSearch:_.debounce(function () {
                this.$store.dispatch('SearchPost',this.keyword)
            },1000)
        }
    }
</script>

<style scoped>

</style>
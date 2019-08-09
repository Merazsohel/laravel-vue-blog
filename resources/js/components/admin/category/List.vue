<template>

    <div>
        <section class="content">
            <div class="row justify-content-around">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Category List</h3>
                            <div class="card-tools">
                                <button class="btn btn-primary">
                                    <router-link to="/add-category" style="color:#fff"> Add Category</router-link>
                                </button>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table id="example2" class="table table-bordered table-hover text-center">
                                <thead>
                                <tr>
                                    <th>
                                        <select name="" id="" @change="deleteSelected" v-model="select">
                                            <option value="">Select</option>
                                            <option value="">Delete All</option>
                                        </select>
                                        <input type="checkbox" @click.prevent="selectAll" v-model="all_select">
                                        <span v-if="all_select==false">Check All</span>
                                        <span v-else>Uncheck All</span>
                                    </th>
                                    <th>Sl</th>
                                    <th>Name</th>
                                    <th>Date</th>
                                    <th>Actions</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr v-for="(category, index) in getallcategory" :key="category.id">
                                    <td style="width: 60px"><input type="checkbox" v-model="categoryItem" :value="category.id"></td>
                                    <td>{{ index + 1 }}</td>
                                    <td>{{category.cat_name}} </td>
                                    <td>{{category.created_at | timeformat}} </td>

                                    <td>
                                       <router-link :to="`/edit-category/${category.id}`">Edit</router-link>
                                        <a href="" @click.prevent="deletecategory(category.id)">Delete</a>
                                    </td>
                                   
                                </tr>

                                </tbody>

                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>

                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </section>
    </div>
</template>

<script>
    export default {
        name: "List",
        data(){
            return{
                categoryItem:[],
                select:'',
                all_select:false
            }
        },
        mounted(){
            this.$store.dispatch("allCategory")
        },
        computed:{
            getallcategory(){
                return this.$store.getters.getCategory
            }
        },
        methods:{
            deletecategory(id){
                axios.get('/category/' + id)
                    .then(()=>{
                        this.$store.dispatch("allCategory")
                        toast.fire({
                            type: 'success',
                            title: 'Category Deleted Successfully'
                        })
                    })
                    .catch(()=>{

                    })
            },
            deleteSelected(){
                axios.get('/deletecategory/'+this.categoryItem)
                    .then(()=>{
                        this.categoryItem = []
                        this.$store.dispatch("allCategory")
                        toast.fire({
                            type: 'success',
                            title: 'Category Deleted Successfully'
                        })
                    })
                    .catch(()=>{

                    })
            },
            selectAll(){
                if(this.all_select == false){
                    this.all_select = true
                    for(let category in this.getallcategory){
                        this.categoryItem.push(this.getallcategory[category].id)

                    }
                }else {
                    this.all_select = false
                    this.categoryItem = []
                }

            }
        }
    }
</script>

<style scoped>

</style>
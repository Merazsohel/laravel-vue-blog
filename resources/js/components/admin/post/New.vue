<template>
    <section class="content">
        <div class="container-fluid">
            <div class="row justify-content-around">
                <!-- left column -->
                <div class="col-md-6">

                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Add New Post</h3>
                        </div>

                        <form role="form" enctype="multipart/form-data">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="postId">Title</label>
                                    <input type="text" class="form-control" id="postId" placeholder="Title" v-model="form.title" name="title" :class="{ 'is-invalid': form.errors.has('title') }">
                                    <has-error :form="form" field="title"></has-error>
                                </div>


                                <div class="form-group">
                                    <label for="descriptionId">Description</label>
                                    <textarea class="form-control" id="descriptionId" placeholder="Description" v-model="form.description" name="description" :class="{ 'is-invalid': form.errors.has('description') }"></textarea>
                                    <has-error :form="form" field="description"></has-error>
                                </div>

                                <div class="form-group">
                                    <label>Select Category</label>
                                    <select name="cat_id" class="form-control" :class="{ 'is-invalid': form.errors.has('cat_id') }" v-model="form.cat_id">
                                        <option :value="category.id" v-for="category in getallcategory">{{category.cat_name}}</option>

                                    </select>
                                    <has-error :form="form" field="cat_id"></has-error>
                                </div>

                                <div class="form-group">
                                    <label>Photo</label> <br/>
                                    <input @change="changePhoto($event)" type="file"  name="photo" :class="{ 'is-invalid': form.errors.has('photo') }">
                                    <img :src="form.photo" alt="" width="150" height="150">
                                    <has-error :form="form" field="photo"></has-error>
                                </div>

                            </div>
                            <!-- /.card-body -->

                            <div class="card-footer">
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </form>
                    </div>
                    <!-- /.card -->

                </div>

            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>
</template>

<script>
    export default {
        name: "New",
        data(){
            return {
                form: new Form({
                    title:'',
                    description:'',
                    category_id:'',
                    photo:'',
                })
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
            changePhoto(event){
                let file = event.target.files[0];
                let reader = new FileReader();
                reader.onload = event => {
                    this.form.photo = event.target.result
                };

                reader.readAsDataURL(file);
            }
        }
    }
</script>

<style scoped>

</style>

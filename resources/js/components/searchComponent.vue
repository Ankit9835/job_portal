<template>
    <div>
       <input type="text" v-model="keyword" placeholder="Search Jobs" v-on:keyup="Searchjobs()" class="form-control">
       <div class="card-footer">
            <ul>
                <li class="list-group-item" v-for = "result in results">
                    <a style = "color:black;" :href = " '/jobs/' + result.id + '/' + result.slug + '/' ">
                        {{ result.title }}
                    </a>
                    <br>
                    <small class="badge badge-success"> {{ result.position }} </small>  
                </li>
                
            </ul>
       </div>
    </div>
</template>

<script>
    export default {
       data(){
            return{
                keyword:'',
                results:[],
            }
       },
       methods:{
           Searchjobs(){
            this.results = [];
            if(this.keyword.length>1){
                axios.get('search/jobs', {params:{keyword:this.keyword}}).then(response=>{
                    this.results = response.data;
                });
            }
           }
       }
    }
</script>

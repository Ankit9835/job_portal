<template>
    <div>
        <form @submit="formSubmit">
            <button v-if="show" class="btn btn-success btn-block">Apply</button>

            <div v-else class = "alert alert-success btn-block">
                Application Sent Successfully
            </div>

        </form>
    </div>
</template>

<script>
    export default {
        props:["jobid"],
        mounted() {
            console.log('Component mounted.')
        },
        data(){
            return{
                'show':true
            } 
        },
        methods:{
            formSubmit(e){
                e.preventDefault();
                axios.post('/apply/'+this.jobid,{

                }).then((response)=>{
                    this.show=false
                });
            }
        }
    }
</script>

<template>
    <div>
        
            <button v-if="show" @click.prevent="unsave()" class="btn btn-info btn-block">UnSaved Job</button>

             <button v-else @click.prevent="save()" class="btn btn-success btn-block">Saved Job</button>
        
    </div>
</template>

<script>
    export default {
        props:["jobid","favourated"],
        
        data(){
            return{
                show:true
            } 
        },
        mounted(){
            this.show = this.jobFavourate ? true:false;
        },
        computed:{
            jobFavourate(){
                return this.favourated;
            }
        },
        methods:{
            save(){
                axios.post('/save/'+this.jobid).then(response=>this.show=true).catch(error=>alert('error'))
            },
            unsave(){
                axios.post('/unsave/'+this.jobid).then(response=>this.show=false).catch(error=>alert('error'))
            }
        }
        
    }
</script>

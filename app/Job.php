<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;
use Auth;

class Job extends Model
{

	protected $fillable = ['user_id','company_id','title','slug','description','roles','category_id','position','address','type','status','last_date','last_date','last_date','last_date','number_of_vacancy','gender','experience','salary'];

    public function getRouteKeyName(){
    	return 'slug';
    }
    
    public function company(){
    	return $this->belongsTo('App\Company');
    }

    public function users(){
    	return $this->belongsToMany(User::class)->withTimeStamps();
    }

    public function checkApplication(){
    	return DB::table('job_user')->where('user_id',Auth::user()->id)->where('job_id',$this->id)->exists();
    }


    public function checkSavedJob(){
        return DB::table('favourates')->where('user_id',Auth::user()->id)->where('job_id',$this->id)->exists();
    }

     public function favourates(){
        return $this->belongsToMany(Job::class,'favourates','job_id','user_id')->withTimeStamps();
    }
}

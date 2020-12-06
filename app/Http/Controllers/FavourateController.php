<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Job;
use Auth;
use DB;

class FavourateController extends Controller
{
    public function saveJob($id){
    	$jobId = Job::findOrfail($id);
    	$jobId->favourates()->attach(Auth()->user()->id);
    	return redirect()->back();
    }

    public function unsaveJob($id){
    	$jobId = Job::findOrfail($id);
    	$jobId->favourates()->detach(Auth()->user()->id);
    	return redirect()->back();
    }
}

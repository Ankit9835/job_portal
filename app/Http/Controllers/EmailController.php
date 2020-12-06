<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Mail;
use App\Mail\SendJob;

class EmailController extends Controller
{
    public function send(Request $request){

    	$homeUrl = url('/');
    	$jobId = $request->job_id;
    	$jobSlug = $request->job_slug;

    	$jobUrl = $homeUrl.'/'.'job'.'/'.$jobId.'/'.$jobSlug;

    	$data = array(

    		'your_name' => $request->your_name,
    		'your_email' => $request->your_email,
    		'friend_name' => $request->friend_name,
    		'jobUrl' => $jobUrl

    	);

    	$emailTo = $request->friend_email;
    	try{
    		Mail::to($emailTo)->send(new SendJob($data));
    		return redirect()->back()->with('message','Job Sent SuccessFullly'.$emailTo);
    	} catch(\Exception $e){
    		return redirect()->back()->with('err_message','Message NoT Sent');
    	}
    	

    }
}

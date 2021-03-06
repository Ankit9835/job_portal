<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Profile;
use Auth;

class UserController extends Controller
{

    public function __construct(){
        $this->middleware(['seeker','verified']);
    }

    public function index(){
    	return view('profile.index');
    }

    public function store(Request $request){

    	$this->validate($request,[

    		'address' => 'required',
    		'bio' => 'required|min:20',
    		'experience' => 'required|min:20',
    		'phone_number' => 'required|min:10|numeric'

    	]);

    	$user = Auth::user()->id;
    	Profile::where('user_id',$user)->update([

    		'address' => $request->address,
    		'phone_number' => $request->phone_number,
    		'experience' => $request->experience,
    		'bio' => $request->bio

    	]);

    	return redirect()->back()->with('message','Profile SuccessFully Updated');
    }

    public function coverletter(Request $request){

    	$this->validate($request,[
    	'cover_letter' => 'required|mimes:pdf,jpeg,jpg,docx|max:2000'
    	]);

    	$user = Auth::user()->id;
    	$cover = $request->file('cover_letter')->store('public/files');
    	Profile::where('user_id',$user)->update([
    		'cover_letter' => $cover
    	]);

    	return redirect()->back()->with('message','Cover Letter Updated SuccessFully');
    }

    public function resume(Request $request){

    	$this->validate($request,[
    	'resume' => 'required|mimes:pdf,jpeg,jpg,docx|max:2000'
    	]);

    	$user = Auth::user()->id;
    	$cover = $request->file('resume')->store('public/files');
    	Profile::where('user_id',$user)->update([
    		'resume' => $cover
    	]);

    	return redirect()->back()->with('message','Cover Letter Updated SuccessFully');
    }

    public function Useravatar(Request $request){

    	$this->validate($request,[
    	'avatar' => 'required|mimes:jpeg,jpg,png|max:2000'
    	]);

    	 $user_id = auth()->user()->id;
        if($request->hasfile('avatar')){
            $file = $request->file('avatar');
            $ext =  $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('uploads/avatar/',$filename);
            Profile::where('user_id',$user_id)->update([
              'avatar'=>$filename
            ]);
        return redirect()->back()->with('message','Profile picture Sucessfully Updated!');
        }
    }
}

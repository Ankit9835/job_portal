<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\Job;

class DashboardController extends Controller
{
    public function index(){
    	$posts = Post::paginate(20);
    	return view('admin.index',compact('posts'));
    }

    public function create(){
    	return view('admin.create');
    }

    public function store(Request $request){

    	$request->validate([

    		'title' => 'required|min:3',
    		'content' => 'required',
    		'image' => 'required|mimes:jpeg,jpg,png'

    	]);

    	if($request->hasFile('image')){
    		$file = $request->file('image');
    		$path = $file->store('uploads','public');
    		Post::create([

    			'title' => $title=$request->title,
    			'slug' => str_limit($title),
    			'content' => $request->content,
    			'image' => $path,
    			'status' => $request->status

    		]);
    	}

    	return redirect('/dashboard')->with('message','Post Created Successfully');

    }

    public function destroy(Request $request){
    	$id = $request->id;
    	$post = Post::find($id);
    	$post->delete();

    return redirect()->back()->with('message','Data Deleted SuccessFully');

    }

    public function edit($id){
    	$post = Post::find($id);
    	return view('admin.edit',compact('post'));
    }

    public function update(Request $request, $id){

    	$request->validate([

    		'title' => 'required|min:3',
    		'content' => 'required',
    		'image' => 'required|mimes:jpeg,jpg,png'

    	]);

    	if($request->hasFile('image')){
    		$file = $request->file('image');
    		$path = $file->store('uploads','public');
    		Post::where('id',$id)->update([

    			'title' => $title=$request->title,
    			'content' => $request->content,
    			'image' => $path,
    			'status' => $request->status

    		]);
    	}

    	$this->updateWithoutPhoto($request,$id);

    return redirect()->back()->with('message','Post Updated Successfully');

    }

    public function updateWithoutPhoto(Request $request, $id){

    	$request->validate([

    		'title' => 'required|min:3',
    		'content' => 'required',
    		'image' => 'required|mimes:jpeg,jpg,png'

    	]);

    	
    		Post::where('id',$id)->update([

    			'title' => $title=$request->title,
    			'content' => $request->content,
    			'status' => $request->status

    		]);
    	


    }

    public function trash(){
    	$posts = Post::onlyTrashed()->paginate(20);
    	return view('admin.trash',compact('posts'));
    }

    public function restore($id){
    	Post::onlyTrashed()->where('id',$id)->restore();
    	return redirect()->back()->with('message','Post Updated Successfully');
    }

    public function toggle($id){
    	$post = Post::find($id);
    	$post->status = !$post->status;
    	$post->save();
    	return redirect()->back()->with('message','Status Updated Successfully');
    }

    public function show($id){

    	$post = Post::find($id);
    	return view('admin.read',compact('post'));

    }

    public function getAllJobs(){
    	$jobs = Job::paginate(50);
    	return view('admin.job',compact('jobs'));
    }

    public function status($id){
        $job = Job::find($id);
        $job->status = !$job->status;
        $job->save();
        return redirect()->back()->with('message','Status Updated Successfully');
    }
}

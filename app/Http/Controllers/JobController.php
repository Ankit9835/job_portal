<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Job;
use App\Company;
use App\Category;
use App\Post;
use App\Testimonial;
use Auth;
use App\Http\Requests\JobPostRequest;
use DB;

class JobController extends Controller
{

    public function __construct(){
        $this->middleware(['employer','verified'],['except' => array('index','show','application','alljobs','searchJobs')]);
    }

    public function index(){
    	$jobs = Job::latest()->limit(10)->where('status',1)->get();
        $companies = Company::get()->random(12);
        $categories = Category::with('jobs')->get();
        $posts = Post::where('status',1)->get();
        $testimonials = Testimonial::orderBy('id','DESC')->first();
    	return view('welcome',compact('jobs','companies','categories','posts','testimonials'));
    }

    public function show($id,Job $job){

       $jobRecommendations = $this->jobRecommendations($job);
       return view('jobs.show',compact('job','jobRecommendations'));
    }

    public function jobRecommendations($job){

         $data = [];

         $jobsBasedOnCategories = Job::latest()->where('category_id',$job->category_id)
                             ->whereDate('last_date','>',date('Y-m-d'))
                             ->where('id','!=',$job->id)
                             ->where('status',1)
                             ->limit(6)
                             ->get();
        array_push($data,$jobsBasedOnCategories);

          $jobsBasedOnCompany = Job::latest()->where('company_id',$job->company_id)
                             ->whereDate('last_date','>',date('Y-m-d'))
                             ->where('id','!=',$job->id)
                              ->where('status',1)
                             ->limit(2)
                             ->get();

        array_push($data,$jobsBasedOnCompany);

          $jobsBasedOnPosition = Job::latest()->where('position','LIKE','%'.$job->position.'%')
              ->where('id','!=',$job->id)
               ->where('status',1)
               ->limit(2)
              ->get();



        array_push($data,$jobsBasedOnPosition);

         $collection  = collect($data);
       $unique = $collection->unique("id");
       $jobRecommendations =  $unique->values()->first();
       return $jobRecommendations;

    }

    public function jobform(){
    	return view('jobs.create');
    }

    public function store(JobPostRequest $request){

    	$user_id = Auth::user()->id;
    	$company_id = Company::where('user_id',$user_id)->first();
    	$company = $company_id->id;

    	 Job::create([

    		'user_id' => $user_id,
    		'company_id' => $company,
    		'title' => $request->title,
    		'slug' => str_slug($request->title),
    		'description' => $request->description,
    		'roles' => $request->roles,
    		'category_id' => $request->category,
    		'position' => $request->position,
    		'address' => $request->address,
    		'type' => $request->type,
    		'status' => $request->status,
    		'last_date' => $request->last_date,
            'number_of_vacancy'=> $request->number_of_vacancy,
            'gender'=> $request->gender,
            'experience'=> $request->experience,
            'salary'=> $request->salary

    	]);

        //dd($test);

    	return redirect()->back()->with('message','Job Posted SuccessFully');

    }

    public function myjob(){
    	$id = Auth::user()->id;
    	$jobs = Job::Where('user_id',$id)->get();
    	return view('jobs.myjob',compact('jobs'));
    }

    public function editjob($id){
        $job = Job::findOrFail($id);
        return view('jobs.edit',compact('job'));
    }

    public function update(Request $request,$id){
        $job = Job::findOrFail($id);
        $job->update($request->all());

        return redirect()->back()->with('message','Job Updated SuccessFully');

    }

    public function application(Request $request,$id){
        $jobId = Job::findOrFail($id);
        $jobId->users()->attach(Auth::user()->id);
        return redirect()->back()->with('message','Job Applied SuccessFully');
    }

    public function applicant(){
        $applicants = Job::has('users')->where('user_id',auth()->user()->id)->get();
      /* $job = Auth::user()->id;
       $applicants = DB::table('jobs')
                    ->join('job_user','jobs.id','job_user.job_id')
                    ->where('jobs.user_id',$job)
                    ->select('jobs.title')
                    ->groupBy('job_user.job_id')
                    ->get();*/
       
        return view('jobs.applicants',compact('applicants'));
    }

    public function alljobs(Request $request){

        $search = $request->get('search');
        $address = $request->get('address');

        if($search && $address){
            $jobs = Job::where('position','LIKE','%'.$search.'%')
                    ->orWhere('title','LIKE','%'.$search.'%')
                    ->orWhere('type','LIKE','%'.$search.'%')
                    ->orWhere('address','LIKE','%'.$address.'%')
                    ->paginate(10);
            return view('jobs.alljobs',compact('jobs'));
        }


        $keyword = $request->get('position');
        $type = $request->get('type');
        $category = $request->get('category_id');
        $address = $request->get('address');

        if($keyword||$type||$category||$address){
            $jobs = Job::where('title','LIKE','%'.$keyword.'%')
                    ->orWhere('type',$type)
                    ->orWhere('category_id',$category)
                    ->orWhere('address',$address)
                    ->paginate(10);
            return view('jobs.alljobs',compact('jobs'));
        } else {
            $jobs = Job::paginate(10);
            return view('jobs.alljobs',compact('jobs'));
        }
   
    }

    public function searchJobs(Request $request){
        $keyword = $request->keyword;
        $job = Job::where('title','like','%'. $keyword .'%')->get();
        return response()->json($job);
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Company;
use Auth;

class CompanyController extends Controller
{

     public function __construct(){
        $this->middleware(['employer','verified'],['except' => array('index','company')]);
    }

    public function index($id, Company $company){
    	return view('company.index',compact('company'));
    }

    public function companyprofile(){
    	return view('company.create');
    }

    public function company(){
        $companies = Company::paginate(20);
        return view('company.company',compact('companies'));
    }

    public function companyupdate(Request $request){

    	$user = Auth::user()->id;
    	Company::where('user_id',$user)->update([

    		'address' => $request->address,
    		'phone' => $request->phone,
    		'website' => $request->website,
    		'slogan' => $request->slogan,
    		'description' => $request->description

    	]);

    	return redirect()->back()->with('message','Company Profile SuccessFully Updated');
    }

    public function coverphoto(Request $request){
    	 $user_id = auth()->user()->id;
        if($request->hasfile('cover_photo')){
            $file = $request->file('cover_photo');
            $ext =  $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('uploads/coverphoto/',$filename);
            Company::where('user_id',$user_id)->update([
              'cover_photo'=>$filename
            ]);
        return redirect()->back()->with('message','Cover Photo Sucessfully Updated!');
        }
    }

    public function companylogo(Request $request){
         $user_id = auth()->user()->id;
        if($request->hasfile('logo')){
            $file = $request->file('logo');
            $ext =  $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('uploads/logo/',$filename);
            Company::where('user_id',$user_id)->update([
              'logo'=>$filename
            ]);
        return redirect()->back()->with('message','Company Logo Sucessfully Updated!');
        }
    }
}

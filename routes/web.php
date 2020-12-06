<?php

use App\Job;
use App\Company;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
/*Route::get('/', function(){
	$jobs = Job::latest()->limit(10)->where('status',1)->get();
	$companies = Company::all();
	return view('old_welcome',compact('jobs','companies'));
});*/
Route::get('/', 'JobController@index');
Route::view('demo','demo');

//Auth::routes();
Auth::routes(['verify' => true]);

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/jobs/{id}/{job}', 'JobController@show')->name('jobs.show');
Route::get('/company/{id}/{company}', 'CompanyController@index')->name('company.index');

Route::get('user/profile','UserController@index')->name('user.profile');
Route::post('user/profile/create','UserController@store')->name('profile.update');
Route::post('cover/letter','UserController@coverletter')->name('cover.letter');
Route::post('resume','UserController@resume')->name('resume');
Route::post('user/avatar','UserController@Useravatar')->name('avatar');

Route::view('employer/register','auth.employer-register')->name('emp');
Route::post('employeer/store','EmployerController@EmployeeRegister')->name('emp.register');

Route::get('company/profile','CompanyController@companyprofile')->name('company.profile');
Route::post('company/store','CompanyController@companyupdate')->name('company.store');

Route::post('company/coverletter','CompanyController@coverphoto')->name('company.coverletter');
Route::post('company/logo','CompanyController@companylogo')->name('company.logo');

Route::get('job/create','JobController@jobform')->name('job.create');
Route::post('job/store','JobController@store')->name('jobs.store');
Route::get('job/my-job','JobController@myjob')->name('my.job');
Route::get('edit/my-job/{id}','JobController@editjob')->name('edit.job');
Route::post('update/job/{id}','JobController@update')->name('update.job');

Route::post('apply/{id}','JobController@application')->name('apply');
Route::get('/jobs/applicant','JobController@applicant')->name('job.applicants');
Route::get('/test',function(){
	$job =  Job::find(21);
	foreach($job->users as $user){
		echo $user->name;
	}
});

Route::get('all/jobs','JobController@alljobs')->name('alljobs');

// save and unsave job
Route::post('save/{id}','FavourateController@saveJob');
Route::post('unsave/{id}','FavourateController@unsaveJob');

// Search Jobs

Route::get('search/jobs','JobController@searchJobs');

// Category

Route::get('categories/{id}','CategoryController@index')->name('categories.index');

// Company
Route::get('/companies','CompanyController@company')->name('company');

// Email
Route::post('/job/mail','EmailController@send')->name('mail');

// Dashboard
Route::get('/dashboard','DashboardController@index')->middleware('admin');
Route::get('/dashboard/create','DashboardController@create')->middleware('admin');

Route::post('/dashboard/create','DashboardController@store')->name('post.store')->middleware('admin');

Route::post('/dashboard/destroy','DashboardController@destroy')->name('post.delete')->middleware('admin');

Route::get('/dashboard/{id}/edit','DashboardController@edit')->name('post.edit')->middleware('admin');

Route::post('/dashboard/{id}/update','DashboardController@update')->name('post.update')->middleware('admin');

Route::get('/dashboard/trash','DashboardController@trash')->name('post.trash')->middleware('admin');

Route::get('/dashboard/{id}/restore','DashboardController@restore')->name('post.restore')->middleware('admin');

Route::get('/dashboard/{id}/toggle','DashboardController@toggle')->name('post.toggle')->middleware('admin');

Route::get('posts/{id}/{slug}','DashboardController@show')->name('post.show');

Route::get('testimonial/create','TestimonialController@create')->middleware('admin');

Route::post('testimonial/store','TestimonialController@store')->name('testimonial.store')->middleware('admin');

Route::get('/testimonial','TestimonialController@index')->middleware('admin');

Route::get('/dashboard/jobs','DashboardController@getAllJobs')->middleware('admin');

Route::get('/job/{id}/status','DashboardController@status')->name('job.status')->middleware('admin');

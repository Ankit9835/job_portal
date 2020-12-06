@extends('layouts.app')

@section('content')
<div class="container">
   @if(Session::has('message'))
                 <div class="alert alert-success">
                    {{Session::get('message')}}
                </div>
            @endif
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ $job->title }}</div>

                <div class="card-body">
                  
                      <h3> Description </h3>
                      <p> {{ $job->description }} </p>
                      <p>
                        <h3> Duties </h3> <p> {{ $job->roles }} </p>

                      </p>
                   
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-header">Short Info</div>

                <div class="card-body">
                   <p> Company: <a href = "{{ route('company.index',[$job->company->id,$job->company->slug]) }}"> {{ $job->company->cname }} </a> </p>
                   <p> Address: {{ $job->address }} </p>
                   <p> Employment Type: {{ $job->type }} </p>
                   <p> Position: {{ $job->position }}</p>
                   <p> Date: {{ $job->created_at->diffForHumans() }} </p>
                   <p> Last Date To Apply: {{ date('F d, Y',strtotime($job->last_date)) }} </p>
                </div>
                @if(Auth::check() && Auth::user()->user_type='seeker')
                @if(!$job->checkApplication())
               
                  <apply-component :jobid = {{ $job->id }}> </apply-component>
                
                @endif
<br>
                <favourate-component :jobid = {{ $job->id }} :favourated = {{ $job->checkSavedJob()?'true':'false' }}> </favourate-component>

                @endif
            </div>

        </div>
    </div>
</div>
@endsection

@extends('layouts.app')

@section('content')
<div class="container">
    <div class="col-md-12">
       <div class="company-profile">
            @if(empty($company->cover_photo))
             <img src = "{{ asset('cover/logo.png') }}" style = "width:50;">
            @else
             <img src = "{{ asset('uploads/coverphoto') }}/{{ $company->cover_photo }}" style = "width:800px;">
            @endif
           
            <div class="company-desc">
                 <img src = "{{ asset('avatar/profile.png') }}" width= "100"><br>
                 {{ $company->description }}
                <h1> {{ $company->cname }} </h1>
                <p> <strong> Slogan- </strong>{{ $company->slogan }}&nbsp;<strong>Address-</strong>{{ $company->address }}&nbsp;<strong>Phone-</strong>{{ $company->phone }}&nbsp;<strong>Website-</strong>{{ $company->website }} </p>
            </div>
       </div>

        <table class="table">
            <thead>
                <th>  </th>
                <th>  </th>
                <th>  </th>
                <th>  </th>
                <th>  </th>
                
            </thead>
            <tbody>
                @foreach($company->jobs as $job)
                <tr>
                    <td> <img src = "{{ asset('avatar/profile.png') }}" width = "80"> </td>
                    <td> Position:{{ $job->position }}<br>
                        <i class="fa fa-clock-o"></i>&nbsp;fulltime
                    </td>
                    <td>
                        <i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;
                        Address: {{ $job->address }}
                    </td>
                    <td>
                        <i class="fa fa-calendar-o" aria-hidden="true"></i>&nbsp;
                        Date: {{ $job->created_at->diffForHumans() }}
                    </td>
                    <td>
                        <a href = "{{ route('jobs.show', [$job->id, $job->slug]) }}">
                        <button class="btn btn-success btn-sm">Apply</button>
                        </a>
                    </td>
                   
                </tr>
                @endforeach
            </tbody>
        </table>

    </div>
</div>
@endsection

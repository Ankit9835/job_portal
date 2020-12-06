@extends('layouts.app')
@section('content')

<div class = "container">
    <div class="row">

        <form action="{{route('alljobs')}}" method="GET">

    <div class="form-inline">
        <div class="form-group">
            <label>Position&nbsp;</label>
            <input type="text" name="position" class="form-control" placeholder="job position">&nbsp;&nbsp;&nbsp;
        </div>
        <div class="form-group">
            <label>Employment &nbsp;</label>
            <select class="form-control" name="type">
                    <option value="">-select-</option>
                    <option value="fulltime">fulltime</option>
                    <option value="parttime">parttime</option>
                    <option value="casual">casual</option>
                </select>
                &nbsp;&nbsp;
        </div>
        <div class="form-group">
            <label>category</label>
            <select name="category_id" class="form-control">
                <option value="">-select-</option>

                    @foreach(App\Category::all() as $cat)
                        <option value="{{$cat->id}}">{{$cat->name}}</option>
                    @endforeach
                </select>
                &nbsp;&nbsp;
        </div>

        <div class="form-group">
            <label>address</label>
            <input type="text" name="address" class="form-control" placeholder="address">&nbsp;&nbsp;
        </div>
        
        <div class="form-group">
            <input type="submit" class="btn btn-search btn-primary btn-block" value="Search">

        </div>
    </div>    <br>

    </form>

        <table class="table">
            <thead>
                <th>  </th>
                <th>  </th>
                <th>  </th>
                <th>  </th>
                <th>  </th>
                
            </thead>
            <tbody>
                @foreach($jobs as $job)
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

        {{ $jobs->appends(Illuminate\Support\Facades\Request::except('page'))->links() }}

    </div>
    
</div>




@endsection
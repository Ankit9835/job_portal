<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Company;
use Hash;

class EmployerController extends Controller
{
    public function EmployeeRegister(Request $request){

    	$user =  User::create([
            'email' => $request->email,
            'user_type' => $request->user_type,
            'password' => Hash::make($request['password']),
        ]);

        Company::create([

            'user_id' => $user->id,
            'cname' => $request->cname,
            'slug' => str_slug($request->cname)

        ]);

        return redirect()->to('login')->with('message','Please Verify Your Email By Clicking The Link Sent To Your Email Address');

    }
}

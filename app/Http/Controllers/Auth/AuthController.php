<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\Customer;
use App\Models\Product;


class AuthController extends Controller
{
    public function loginview()
    {
        if(Auth::user()){
            $route = $this->dashboard();
            return redirect($route);
        }
        return view('login');
    }

    public function loginsubmit(Request $request)
    {
        $request->validate([
            'userid' => 'required',
            'password' => 'required|min:6'
        ]);

        $credentials = $request->only('userid', 'password');
        $user = User::where('userid', $credentials['userid'])->first();

        if ($user && Hash::check($credentials['password'], $user->password)) {
            if (Auth::attempt($credentials)) {
                return redirect()->route('dashboard');
            }
        }

        return redirect()->route('login.view')->with('message', 'Username & Password is incorrect');
    }

    public function dashboard()
    {
        $user = Auth::user();
        session(['email' => $user->email]);
        if(Auth::check())
        {
            $customerRecord = Customer::count();
            $productRecord = Product::count();
            return view('dashboard', compact('customerRecord', 'productRecord'));
        }
    }

    public function logout()
    {
        Auth::logout();
        return redirect()->route('login.view');
    }

}

<?php
namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\User;

class LoginController extends Controller
{
    public function loginView()
    {
        return view('auth.login');
    }

    public function loginSubmit(Request $request)
    {
        $request->validate([
            'userid' => 'required',
            'password' => 'required|min:6'
        ]);

        $credentials = $request->only('userid', 'password');
        $user = User::where('userid', $credentials['userid'])->first();

        if ($user && Hash::check($credentials['password'], $user->password)) {
            if (Auth::attempt($credentials)) {
                return redirect()->route('dashboard.view');
            }
        }

        return back()->with('message', 'Username & Password is incorrect');
    }

    public function dashboard()
    {
        return view('dashboard');
    }
}

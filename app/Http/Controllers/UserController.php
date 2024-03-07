<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
class UserController extends Controller
{
    public function UserRecord()
    {
        $UserRecord = User::orderBy('id','desc')->paginate(10);
        return view('usermanagement.index', compact('UserRecord'));
    }

    public function UserAdd()
    {
        return view('usermanagement.add');
    }

    public function UserAddSubmit(request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|min:3',
            'userid' => 'required',
            'password' => 'required|min:6',
            'confirmpassword' => 'required|min:6|same:password',
        ]);
        $UserRecord = new User;
        $UserRecord->name = $request->input('name');
        $UserRecord->userid= $request->input('userid');
        $UserRecord->password= Hash::make($request->input('password'));
        $UserRecord->save();
        if($UserRecord)
        {
            return redirect()->route('user')->with('success', 'Record Successfully Added');
        }
        else
        {
            return redirect()->back()->with('error', 'Record Not Successfully Added');
        }
    }

    public function UserEdit($id)
    {
        $UserRecord = User::find($id);
        return view('usermanagement.edit', compact('UserRecord'));
    }

    public function UserEditSubmit (request $request, $id)
    {
        $UserRecord = User::find($id);
        $UserRecord->name = $request->input('name');
        $UserRecord->userid= $request->input('userid');
        $UserRecord->update();
        if($UserRecord)
        {
            return redirect()->route('user')->with('success', 'Record Has Been Successfully Update');
        }
        else
        {
            return redirect()->back()->with('error', 'Record Has Not Been Successfully Update');
        }
    }

    public function UserPasswordUpdate($id)
    {
        $UserRecord = User::find($id);
        return view('usermanagement.updatepassword', compact('UserRecord'));
    }



    public function UserPasswordUpdateSubmit(request $request, $id)
    {
        $request->validate([
            'oldpassword' => 'required|min:6',
            'newpassword' => 'required|min:6',
            'confirmpassowrd' => 'required|min:6|same:newpassword',
        ]);


        $updatepassword = User::find($id);
        $oldpassword = $request->input('oldpassword');
        $newpassword = $request->input('newpassword');
        $confirmpassword = $request->input('confirmpassowrd');
        if($updatepassword)
        {
            $password_check =  Hash::check($oldpassword, $updatepassword->password);
            if($password_check)
            {
                $updatepassword->password = Hash::make($newpassword);
                $updatepassword->update();
                if($updatepassword)
                {
                    return redirect()->route('user')->with('success', 'Password Has Been Successfully Updated.');
                }
                else
                {
                    return redirect()->back()->with('error', 'Password Has Not Been Successfully Updated');
                }
            }
            else
            {
                return redirect()->back()->with('error', 'Old Password Not Match');
            }
        }
    }


    public function UserDelete(request $request, $id)
    {
        $UserRecord = User::find($id);
        $UserRecord->delete();
        if($UserRecord)
        {
            return redirect()->back()->with('success', 'Record Has Been Successfully Delete.');
        }
        else
        {
            return redirect()->back()->with('error', 'Record Has Not Been Successfully Delete');
        }
    }

}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;
use App\Exports\CustomerExport;
use Maatwebsite\Excel\Facades\Excel;

class CustomerController extends Controller
{
    public function CustomerRecord()
    {
        $customerRecord = Customer::orderBy('id', 'desc')->paginate(10);
        return view('customer.index', compact('customerRecord'));
    }

    public function CustomerAdd()
    {
        return view('customer.add');
    }

    public function CustomerAddSubmit(request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|min:3',
            'age' => 'required|numeric|min:2',
            'contact' => 'required|numeric',
        ]);

        $customerRecord = new Customer;
        $customerRecord->name = $request->input('name');
        $customerRecord->age = $request->input('age');
        $customerRecord->contact = $request->input('contact');
        $customerRecord->save();
        if($customerRecord)
        {
            return redirect()->route('customer')->with('success', 'Record Successfully Added');
        }
        else
        {
            return redirect()->back()->with('error', 'Record Not Successfully Added');
        }
    }

    public function CustomerEdit($id)
    {
        $customerRecord = Customer::find($id);
        return view('customer.edit', compact('customerRecord'));
    }

    public function CustomerEditSubmit(request $request, $id)
    {
        $customerRecord = Customer::find($id);
        $customerRecord->name = $request->input('name');
        $customerRecord->age = $request->input('age');
        $customerRecord->contact = $request->input('contact');
        $customerRecord->update();
        if($customerRecord)
        {
            return redirect()->route('customer')->with('success', 'Record Has Been Successfully Update');
        }
        else
        {
            return redirect()->back()->with('error', 'Record Has Not Been Successfully Update');
        }
    }

    public function CustomerDelete(request $request, $id)
    {
        $customerRecord = Customer::find($id);
        $customerRecord->delete();
        if($customerRecord)
        {
            return redirect()->back()->with('success', 'Record Has Been Successfully Delete.');
        }
        else
        {
            return redirect()->back()->with('error', 'Record Has Not Been Successfully Delete');
        }
    }

    public function export()
    {
        return Excel::download(new CustomerExport, 'customers.xlsx');
    }
}

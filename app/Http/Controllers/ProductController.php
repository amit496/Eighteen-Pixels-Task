<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Exports\ProductsExport;
use Maatwebsite\Excel\Facades\Excel;

class ProductController extends Controller
{
    public function ProductRecord()
    {
        $productRecord = Product::orderBy('created_at', 'desc')->paginate(10);
        return view('product.index', compact('productRecord'));
    }

    public function ProductAdd()
    {
        return view('product.add');
    }

    public function ProductAddSubmit(request $request)
    {
        $validatedData = $request->validate([
            'productname' => 'required|string',
            'customerqty' => 'required|numeric|min:1',
        ]);

        $productRecord = new Product;
        $productRecord->product_name = $request->input('productname');
        $productRecord->customer_qty = $request->input('customerqty');
        $productRecord->save();
        if($productRecord)
        {
            return redirect()->route('product')->with('success', 'Record Successfully Added');
        }
        else
        {
            return redirect()->back()->with('error', 'Record Not Successfully Added');
        }
    }

    public function ProductEdit($id)
    {
        $productRecord = Product::find($id);
        return view('product.edit', compact('productRecord'));
    }

    public function ProductEditSubmit(request $request, $id)
    {
        $productRecord = Product::find($id);
        $productRecord->product_name = $request->input('productname');
        $productRecord->customer_qty = $request->input('customerqty');
        $productRecord->update();
        if($productRecord)
        {
            return redirect()->route('product')->with('success', 'Record Has Been Successfully Update');
        }
        else
        {
            return redirect()->back()->with('error', 'Record Has Not Been Successfully Update');
        }
    }

    public function ProductDelete(request $request, $id)
    {
        $productRecord = Product::find($id);
        $productRecord->delete();
        if($productRecord)
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
        return Excel::download(new ProductsExport, 'products.xlsx');
    }
}

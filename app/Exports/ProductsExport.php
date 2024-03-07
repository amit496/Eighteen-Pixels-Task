<?php

namespace App\Exports;

use App\Models\Product;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\Exportable;

class ProductsExport implements FromCollection
{

    use Exportable;

    public function collection()
    {
        $products = Product::select('product_name', 'customer_qty')->get();
        $counter = 1;
        $data = collect([
            ['S No', 'Product Name', 'Customer Qty',]
        ]);

        foreach ($products as $product) {
            $data->push([
                $counter++,
                $product->product_name,
                $product->customer_qty,
            ]);
        }

        return $data;
    }
}

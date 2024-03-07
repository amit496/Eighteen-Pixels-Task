<?php

namespace App\Exports;

use App\Models\Customer;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\Exportable;

class CustomerExport implements FromCollection
{
    use Exportable;

    public function collection()
    {
        $customers = Customer::select('name', 'age', 'contact')->get();
        $counter = 1;
        $data = collect([
            ['S No', 'Name', 'Age', 'Contact']
        ]);

        foreach ($customers as $customer) {
            $data->push([
                $counter++,
                $customer->name,
                $customer->age,
                $customer->contact
            ]);
        }

        return $data;
    }
}

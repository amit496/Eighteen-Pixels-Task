<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\Customer;
class CustomerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $customerFakeData = Faker::create();
        for($i=1; $i <=100; $i++)
        {
            $customerRecord = new customer();
            $customerRecord->name =  $customerFakeData->name;
            $customerRecord->age =  $customerFakeData->numerify('##');
            $customerRecord->contact =  $customerFakeData->numerify('##########');
            $customerRecord->save();
        }
    }
}

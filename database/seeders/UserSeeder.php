<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\User;
use Hash;
class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $userFakeData = Faker::create();
        for($i=1; $i <=100; $i++)
        {
            $userRecord = new User();
            $userRecord->name =  $userFakeData->name;
            $userRecord->email =  $userFakeData->email;
            $userRecord->userid = preg_replace("/[^a-zA-Z0-9\-_]/", "", $userFakeData->userName);
            $userRecord->contact =  $userFakeData->numerify('##########');
            $userRecord->password =  Hash::make($userFakeData->password);
            $userRecord->save();
        }
    }
}

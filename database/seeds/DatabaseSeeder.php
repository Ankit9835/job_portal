<?php

use Illuminate\Database\Seeder;
use App\Category;
use App\Role;
use App\User;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UserSeeder::class);
        Category::truncate();
        factory('App\User',20)->create();
        factory('App\Company',20)->create();
        factory('App\Job',20)->create();

        $categories = [

            'Technology',
            'Engineering',
            'Government',
            'Medical',
            'Construction'

        ];

        foreach($categories as $category){
            Category::create(['name' => $category]);
        }
        Role::truncate();
        $adminRole = Role::create(['name' => 'admin']);

        $admin = User::create([

            'name' => 'admin',
            'email' => 'adminstedas@gmail.com',
            'password' => bcrypt('password123'),
            'email_verified_at' => NOW()

        ]);

        $admin->roles()->attach($adminRole);
        
    }
}

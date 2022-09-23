## Pet management system

In order to run this application, please ensure pull the appropriate code from the github repository. 

Then please run the migrations command:
```
php artisan migrate
```

Once the database migrations have run, seed the database with user data:
```
php artisan db:seed
```

Then start up your laravel application
```
php artisan serve
```
@extends('dashboard.pet_master')
@section('pet_listing')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Pet Details</h4>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-responsive-sm">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Pet Name</th>
                                            <th>Pet Date of Birth</th>
                                            <th>Pet Age</th>
                                            <th>Pet Breed</th>
                                            <th>Pet Description</th>
                                            <th>Owner Name</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                            <tr>
                                                <th>{{ $pets->id }}</th>
                                                <th>{{ $pets->pet_name }}</th>
                                                <th>{{ $pets->pet_dob }}</th>
                                                <th>{{ $pets->pet_dob }}</th>
                                                <th>{{ $breeds->breed_name }}</th>
                                                <th>{{ $pets->pet_description }}</th>
                                                <th>{{ $pets->owner->name }}</th>
                                            </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
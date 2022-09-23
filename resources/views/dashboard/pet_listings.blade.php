@extends('dashboard.pet_master')
@section('pet_listing')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Pet Listings</h4>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-responsive-sm">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Pet Name</th>
                                            <th>Pet Date of Birth</th>
                                            <th>Pet Breed</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                        @foreach ($pets as $pet)
                                            <tr>
                                                <th>1</th>
                                                <td>{{ $pet->pet_name }}</td>
                                                <td>{{ $pet->pet_dob }}</td>
                                                <td>{{ $pet->pet_description }}</td>
                                                    
                                            
                                                <td>
                                                    <div class="d-flex">
                                                        <a href="{{ route('pet.details', $pet->id) }}" class="btn btn-primary shadow btn-xs sharp mr-1"><i class="fa fa-pencil"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                        @endforeach
                                        
                                       
                                            
                                    </tbody>   
                                        
                                </table>
                                {{ $pets->links() }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
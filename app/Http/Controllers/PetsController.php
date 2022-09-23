<?php

namespace App\Http\Controllers;

use App\Http\Requests\StorePetsRequest;
use App\Http\Requests\UpdatePetsRequest;
use App\Models\Breed;
use App\Models\Pets;

class PetsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $query = Pets::latest();
        $query->join('pets', 'breed.breed_id', '=', 'breed.id')
            ->select(['pets.*', 'breeds.*']);
        $breeds = $query->get();
        // $owner = Owner::with('pets')->latest()->get();
        return $breeds;
    }

    public function create()
    {
        //
    }

    public function store(StorePetsRequest $request)
    {
        //
    }

    public function show(Pets $pets)
    {
        //
    }

    public function edit(Pets $pets)
    {
        //
    }

    public function update(UpdatePetsRequest $request, Pets $pets)
    {
        //
    }

    public function destroy(Pets $pets)
    {
        //
    }
    
    public function PetListings() {
        $pets = Pets::paginate(5);
        $breeds = Breed::all();
        

        return view('dashboard.pet_listings', compact('pets', 'breeds'));
    }

    public function PetDetails($id) {
        $pets = Pets::findOrFail($id);
        $breeds = Breed::findOrFail($id);
        return view('dashboard.pet_details', compact('pets', 'breeds'));
    }

}

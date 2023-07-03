<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\Product;
class AdminPage extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
       
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $allproducts = Product::get();
        if (Auth::id()) {
            $usertype = Auth()->user()->type;
    
            if ($usertype === 'user') {
                return redirect()->route('home');
            } else if ($usertype === 'admin') {
                return view('admin.create');
            }
        }
        
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        Product::create($request->all());
        return redirect()->route('home');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit( $id)
    {
        $product=Product::find($id);
        return view('admin.edite', compact('product'));
        
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $product = Product::find($id);
        $product->update([
            'prix' => $request->input('prix'),
        ]);
        return redirect()->route('home');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy( $id)
    {
        $product = Product::findOrFail($id);
        $product->delete();
        return redirect()->back();
    }
}

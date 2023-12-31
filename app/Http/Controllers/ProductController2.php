<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Panier;

class ProductController2 extends Controller
{
    
    public function detailsP($id)
    {
        $product = Product::find($id);
        return view('pages.categories.pcGamerDt', compact('product'));
    }

    public function panier($id)
    {
        $product = Product::find($id);
    
        // Check if the product already exists in the Panier (cart) table
        $existingProduct = Panier::where('title', $product->title)->first();
        if ($existingProduct) {
            return back()->with('error', 'Item already exists in the cart.'); // Redirect back with error message
        }
    
        $panier = Panier::create([
            'title' => $product->title,
            'img' => $product->img,
            'prix' => $product->prix,
            'description' => $product->description,
            'quantity' => $product->quantity,
            'type' => $product->type,
        ]);
    
        return back()->with('success', 'Your PC has been added successfully.'); // Redirect back with success message
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\Category;

class ProductController extends Controller
{
     public function index()
    {
        $products = Product::all();

        return view('admin.products', compact('products'));
    }

    public function create()
    {
    	$cats=Category::all();

    	return view('admin.addProduct', compact('cats'));
    }

    public function store(Request $request)
    {	
    	$this->validate(request(),[
            'name'=>'required',
            'desc'=>'required',
            'name_fr'=>'required',
            'desc_fr'=>'required',
            'image'=>'required|image|mimes:jpg,jpeg,png,gif|max:2048',
            'price'=>'required',
            'category_id'=>'required',
            'video_link' => 'required',
        ]);

        $img_name=time() . '.' . $request->image->getClientOriginalExtension();

        $product= new Product;
        $product->name=request('name');
        $product->desc=request('desc');
        $product->name_fr=request('name_fr');
        $product->desc_fr=request('desc_fr');
        $product->image=$img_name;
        $product->category_id=request('category_id');
        $product->video_link=request('video_link');
        $product->price=request('price');
        $product->save();

        $request->image->move('uploads', $img_name);

        session()->flash('message', 'Product is Created');

        return redirect('/admin/products');
    }

    public function edit($id)
    {
    	$cats=Category::all();
        $product = Product::find($id);
        return view('admin.editProduct', compact('product', 'cats'));
    }

    public function update(Request $request, $id)
      {
        $this->validate(request(),[
            'name'=>'required',
            'desc'=>'required',
            'name_fr'=>'required',
            'desc_fr'=>'required',
            'image'=>'image|mimes:jpg,jpeg,png,gif|max:2048',
            'price'=>'required',
            'category_id'=>'required'
        ]);

        if(file_exists($request->file('image')))
        {
           $img_name=time() . '.' . $request->image->getClientOriginalExtension();

           Product::where('id', $id)->update(['image'=>$img_name]);
                     
           $request->image->move(public_path('uploads'), $img_name);

        }

        Product::where('id', $id)->update($request->except(['_token', '_method', 'image']));

        session()->flash('message', 'Product Is Updated');

        return redirect('/admin/products');
    }

    public function destroy($id)
    {
        $product = Product::findOrFail($id);

        $product->delete();

        session()->flash('deleted', 'Product is Deleted');

        return back();
    }
}

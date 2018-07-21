<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;

class CategoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('admin');
    }

    public function index()
    {
        $categories = Category::all();

        return view('admin.categories', compact('categories'));
    }

    public function create()
    {
    	return view('admin.addCategory');
    }

    public function store(Request $request)
    {	
    	$this->validate(request(),[
            'name'=>'required',
        ]);

        $category = Category::create($request->except(['_token']));

        session()->flash('message', 'Category is Created');

        return redirect('/admin/categories');
    }

    public function edit($id)
    {
    	$cat = Category::find($id);

    	return view('admin.editCat', compact('cat'));
    }

    public function update(Request $request, $id)
    {
        $this->validate(request(),[
            'name'=>'required',
        ]);

        $category = Category::where('id', $id)->update($request->except(['_token', '_method']));

        session()->flash('message', 'Category Updated');

        return redirect('/admin/categories');
    }

    public function destroy($id)
    {
        $category = Category::findOrFail($id);

        $category->delete();

        session()->flash('deleted', 'Category is Deleted');

        return back();
    }
}

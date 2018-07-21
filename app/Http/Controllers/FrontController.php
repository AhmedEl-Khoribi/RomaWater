<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Product;
use App\Mail;

class FrontController extends Controller
{
    public function send(Request $request)
    {
    if($request->lang === 'ar')
    {
	$this->validate(request(),[
        'fname'=>'arabic',
        'lname'=>'arabic',
        'email'=>'arabic|email',
        'message'=>'arabic',
    ]);
    }
    $this->validate(request(),[
            'fname'=>'required',
            'lname'=>'required',
            'email'=>'required|email',
            'message'=>'required',
        ]);

        DB::table('from_contact_us')->insert($request->except(['_token']));

        session()->flash('message', 'تم ارسال الرسالة الى الادارة');

        return redirect('/contact');
    }

    public function showPro($id)
    {
    	$product = Product::find($id);

    	return view('single', compact('product'));
    }

    public function showProCat($id)
    {
        $products = Product::where('category_id', $id)->get();

        return view('products', compact('products'));
    }

    public function formClie(Request $request, $id)
    {
        if($request->lang === 'ar')
        {
        	$this->validate(request(),[
                'name'=>'arabic',
                'phone'=>'arabic',
                'email'=>'email',
                'city'=>'arabic',
                'address'=>'arabic',
                'phone'=>'arabic|rakam_ar'
            ]);
        }      
        $this->validate(request(),[
                'name'=>'required',
                'phone'=>'required',
                'email'=>'email',
                'city'=>'required',
                'address'=>'required',
                'phone'=>'required|numeric'
            ]);

    	$order = new Mail;
    	$order->name = $request->name;
    	$order->phone = $request->phone;
		$order->email = $request->email;
    	$order->city = $request->city;
    	$order->address = $request->address;
    	$order->quantity = $request->quantity;
		$order->product_id = $id;
    	$order->city = $request->city;
    	$order->save();

    	session()->flash('message', 'تم ابلاغ الادارة بطلبك');

        return redirect('/product/'.$id);


    }
}

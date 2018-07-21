<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class AboutUsController extends Controller
{
    public function __construct()
    {
        $this->middleware('admin');
    }
    
    public function showAboutUs()
    {
    	$about_us =  DB::table('about_uses')->get();

    	return view('admin.aboutUsShow', compact('about_us'));
    }

    public function editAboutUs($id)
    {
    	$about =  DB::table('about_uses')->find($id);

    	return view('admin.editAboutUs', compact('about'));
    }

    public function updateAboutUs(Request $request, $id)
    {
        $this->validate(request(),[
            'desc'=>'required',
            'desc_fr'=>'required',
        ]);
        if(file_exists($request->file('img')))
        {
           $img_name=time() . '.' . $request->img->getClientOriginalExtension();

           DB::table('about_uses')->where('id', $id)->update(['img'=>$img_name]);
                     
           $request->img->move(public_path('uploads'), $img_name);

        }

        DB::table('about_uses')->where('id', $id)->update($request->except(['_token', '_method', 'img']));

        session()->flash('message', 'Site About Us Is Updated');

        return redirect('/admin/about-us');
    }
}

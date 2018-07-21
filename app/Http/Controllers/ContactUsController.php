<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class ContactUsController extends Controller
{
    public function __construct()
    {
        $this->middleware('admin');
    }
    
    public function showContactUs()
    {
    	$contact_us =  DB::table('contact_uses')->get();

    	return view('admin.contactUsShow', compact('contact_us'));
    }

    public function editContactUs($id)
    {
    	$contact =  DB::table('contact_uses')->find($id);

    	return view('admin.editContactUs', compact('contact'));
    }

    public function updateContactUs(Request $request, $id)
    {
        DB::table('contact_uses')->where('id', $id)->update($request->except(['_token', '_method']));

        session()->flash('message', 'Site Contact Us Is Updated');

        return redirect('/admin/contact_us');
    }
}

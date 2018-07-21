<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mail;
use DB;

class MailController extends Controller
{
    public function index()
    {
    	$mails = Mail::where('is_done', 'no')->get();

    	return view('admin.orders', compact('mails'));
    }

    public function check($id)
    {
    	Mail::where('id', $id)->update(['is_done'=>'yes']);

    	return redirect('/admin/mailbox');
    }

    public function fromForm()
    {
        $all = DB::table('from_contact_us')->get();

        return view('admin.fromSite', compact('all'));
    }

    public function see($id)
    {
        $a =DB::table('from_contact_us')->where('id', $id)->delete();

        return redirect('/admin/contact');
    }
}

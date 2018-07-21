<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Faq;

class FaqController extends Controller
{
    public function __construct()
    {
        $this->middleware('admin');
    }
    
    public function showFAQ()
    {
    	$faqs = Faq::all();

    	return view('admin.fagsUsShow', compact('faqs'));
    }

    public function editFAQ($id)
    {
    	$faq =  Faq::find($id);

    	return view('admin.editFAQS', compact('faq'));
    }

    public function updateFAQ(Request $request, $id)
    {
        $this->validate(request(),[
            'question'=>'required',
            'answer'=>'required',
            'question_fr'=>'required',
            'answer_fr'=>'required',
        ]);

        Faq::where('id', $id)->update($request->except(['_token', '_method']));

        session()->flash('message', 'Site FAQS Is Updated');

        return redirect('/admin/faqs');
    }

    public function createFAQ()
    {
    	return view('admin.createFAQ');
    }

    public function storeFAQ(Request $request)
    {
    	$this->validate(request(),[
            'question'=>'required',
            'answer'=>'required',
            'question_fr'=>'required',
            'answer_fr'=>'required',
        ]);

    	Faq::insert([ 'question'=>request('question'),
						'answer'=>request('answer'),
                        'question_fr'=>request('question_fr'),
                        'answer_fr'=>request('answer_fr')     
                      ]);

    	session()->flash('message', 'Site FAQS Is Created');

        return redirect('/admin/faqs');

    }

    public function destroyFaq($id)
    {
        Faq::where('id', $id)->delete();
        session()->flash('deleted', 'Site FAQ is Deleted Successfully...');
        return redirect('/admin/faqs');
    }
}

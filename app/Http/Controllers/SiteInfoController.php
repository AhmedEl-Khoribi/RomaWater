<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\SiteInfo;

class SiteInfoController extends Controller
{

	public function __construct()
    {
        $this->middleware('admin');
    }

    public function index()
    {
        $infos = SiteInfo::all();

        return view('admin.showInfos', compact('infos'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $info = SiteInfo::find($id);

        return view('admin.editSiteInfo', compact('info'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate(request(),[
            'logo'=>'image|mimes:jpg,jpeg,png,gif|max:2048',
            'favicon'=>'image|mimes:jpg,jpeg,png,gif|max:2048',
        ]);

        if(file_exists($request->file('logo')))
        {
           $img_name=time() . '.' . $request->logo->getClientOriginalExtension();

           SiteInfo::where('id', $id)->update(['logo'=>$img_name]);
                     
           $request->logo->move(public_path('uploads'), $img_name);

        }

        if(file_exists($request->file('favicon')))
        {
           $img_name2=time() . '.' . $request->favicon->getClientOriginalExtension();

           SiteInfo::where('id', $id)->update(['favicon'=>$img_name2]);
                     
           $request->favicon->move(public_path('uploads'), $img_name2);

        }


        SiteInfo::where('id', $id)->update($request->except(['_token', '_method', 'logo', 'favicon']));

        session()->flash('message', 'Site Information Is Updated');

        return redirect('/admin/site_info');
    }
}

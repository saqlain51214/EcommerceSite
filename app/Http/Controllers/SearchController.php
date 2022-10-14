<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Products_model;
use App\Contact;


class SearchController extends Controller
{
    public function search(Request $request)
    {
        
        $keyword = $request->search_keywords;
        $perPage = 1;
        if (request('search_keywords')) {

            $products = Products_model::where('p_name', 'LIKE', "%$keyword%")
            ->orWhere('p_color', 'LIKE', "%$keyword%")
            ->orWhere('description', 'LIKE', "%$keyword%")
            ->orWhere('price', 'LIKE', "%$keyword%")
            ->get();
        }

      

        return view('FrontEnd.search', compact('products'));
    }


    public function contact()
    {
        return view('FrontEnd.contact');
    }

    public function submit(Request $request)
    {
        $this->validate($request,[
            'address'=>'required',
            'name'=>'required',
            'email'=>'required',
            'phone'=>'required',
        ]);

        $formInput=$request->all();
        Contact::create($formInput);

        return back()->with('message','Thank you for contact us!');
    }
}

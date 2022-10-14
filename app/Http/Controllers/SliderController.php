<?php

namespace App\Http\Controllers;
use App\Slider;
use Image;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class SliderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $menu_active=5;
        $sliders=Slider::where('status',1)->get();
        return view('backEnd.slider.index',compact('menu_active','sliders'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $menu_active=5;
        return view('backEnd.slider.create',compact('menu_active'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'image'=>'required|image|mimes:png,jpg,jpeg',
            
        ]);

        $formInput=$request->all();
        if($request->file('image')){
            $image=$request->file('image');
            if($image->isValid()){
                $fileName=time().'-'.str_slug('slider',"-").'.'.$image->getClientOriginalExtension();
                $large_image_path=public_path('Slider/'.$fileName);

                //Resize Image
                Image::make($image)->save($large_image_path);
                $formInput['image']=$fileName;
            }
        }
        if(empty($formInput['status'])){
            $formInput['status']=0;
        }
        Slider::create($formInput);
        return redirect()->route('slider.create')->with('message','Slider Added Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
       
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $menu_active=5;
        $edit_slider=Slider::findOrFail($id);
        return view('backEnd.slider.edit',compact('menu_active','edit_slider'));
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
        $update_slider=Slider::findOrFail($id);
        $this->validate($request,[
            'image'=>'required|image|mimes:png,jpg,jpeg',
        ]);
        $formInput=$request->all();
        if($update_slider['image']==''){
            if($request->file('image')){
                $image=$request->file('image');
                if($image->isValid()){
                    $fileName=time().'-'.str_slug('slider',"-").'.'.$image->getClientOriginalExtension();
                    $large_image_path=public_path('Slider/'.$fileName);
                    //Resize Image
                    Image::make($image)->save($large_image_path);
                    $formInput['image']=$fileName;
                }
            }
        }else{
            $formInput['image']=$update_slider['image'];
        }
        $update_slider->update($formInput);
        return redirect()->route('slider.index')->with('message','Update Slider Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function deleteImage($id){
        //Slider::where(['id'=>$id])->update(['image'=>'']);
        $delete_image=Slider::findOrFail($id);
        $image_large=public_path().'/Slider'.$delete_image->image;
        if($delete_image){
            $delete_image->image='';
            $delete_image->save();
            ////// delete image ///
            unlink($image_large);

        }
        return back();
    }
}

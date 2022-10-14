<?php

namespace App\Http\Controllers;

use App\Cart_model;
use App\Orders_model;
use App\OrderProduct;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Mail;


class OrdersController extends Controller
{
    public function index(){
        $session_id=Session::get('session_id');
     
       
        $cart_datas=Cart_model::where('session_id',$session_id)->get();
        $total_price=0;
        foreach ($cart_datas as $cart_data){
            $total_price+=$cart_data->price*$cart_data->quantity;
        }
        $shipping_address=DB::table('delivery_address')->where('users_id',Auth::id())->first();
        return view('checkout.review_order',compact('shipping_address','cart_datas','total_price'));
    }
    public function order(Request $request){

   
        $input_data=$request->all();
        $payment_method=$input_data['payment_method'];
        $orders = Orders_model::create($input_data);
        $user_id = Auth::user()->id;
        $session_id=Session::get('session_id');
        $cart_datas=Cart_model::where('session_id',$session_id)->get();
        if(sizeof($cart_datas)){
            foreach($cart_datas as $order){

                $order_product                  = new OrderProduct();
                $order_product->user_id         = $user_id;
                // $order_product->order_id        = $$orders->id;
                $order_product->product_id      = $order->products_id;
                $order_product->product_name    = $order->product_name;
                $order_product->product_code    = $order->product_code;
                $order_product->product_size    = $order->size;
                $order_product->product_color   = $order->product_color;
                $order_product->product_qty     = $order->quantity;
                $order_product->session_id      = $order->session_id;
                $order_product->price           = $order->price;
                $order_product->save();

            }
            

        }
        if($payment_method=="COD"){
            return redirect('/cod');
        }else{
            return redirect('/paypal');
        }
    }
    public function cod(){
        $session_id=Session::get('session_id');
        $cart = Cart_model::destroy($session_id);
    
        $user_order=Orders_model::where('users_id',Auth::id())->first();
     
        $order_product = OrderProduct::where('session_id',$session_id)->get();
        $order_product[0]['name']       = $user_order->name;
        $order_product[0]['address']    = $user_order->address;
        $order_product[0]['city']       = $user_order->city;
        $order_product[0]['state']      = $user_order->state;
        $order_product[0]['pincode']    = $user_order->pincode;
        $order_product[0]['country']    = $user_order->country;
      
    //  dd(count($order_product));
        \Mail::to('razasaqlain85@gmail.com')->send(new \App\Mail\Mail($order_product));
        return view('payment.cod',compact('user_order'));
    }
    public function paypal(Request $request){
        $who_buying=Orders_model::where('users_id',Auth::id())->first();
        return view('payment.paypal',compact('who_buying'));
    }
}

@extends('frontEnd.layouts.master')
@section('title','Contact Page')
@section('content')
    <section>
        <div class="container">
            @if(Session::has('message'))
            <div class="alert alert-success text-center" role="alert">
                {{Session::get('message')}}
            </div>
            @endif
            <div class="row">
                <div class="col-sm-3">
                    {{-- @include('frontEnd.layouts.category_menu') --}}
                </div>

                <div class="col-sm-6 padding-right">
                    <div class="features_items"><!--features_items-->
                        <h2 class="title text-center"><img class="brand-logo"  src="{{asset('frontEnd/images/home/dark-logo.png')}}" alt="" /></h2>
                        <div class="login-form"><!--login form-->
                            <h2>Contact us for donations</h2>
                            <form action="{{url('/contact-submit')}}" method="post" class="form-horizontal">
                                <input class="{{$errors->has('name')?'has-error':''}}" type="hidden" name="_token" value="{{csrf_token()}}">
                                <input type="text" placeholder="Name" name="name"/>
                                <span class="text-danger">{{$errors->first('name')}}</span>

                                <input type="email" placeholder="Email" name="email"/>
                                <span class="text-danger">{{$errors->first('email')}}</span>

                                <input type="phone" placeholder="Number" name="phone"/>
                                <span class="text-danger">{{$errors->first('phone')}}</span>

                                <input type="text" placeholder="Address" name="address"/>
                                <span class="text-danger">{{$errors->first('address')}}</span>

                            
                                <button type="submit" class="btn btn-default" style="margin-bottom: 88px;">Submit</button>
                            </form>
                        </div><!--/login form-->
        
                    </div><!--features_items-->

                </div>
            </div>
        </div>
    </section>
@endsection
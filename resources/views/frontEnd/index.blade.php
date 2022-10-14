@extends('frontEnd.layouts.master')
@section('title','Home Page')
@section('content')
<style>
    .collection-container{
    width: 100%;
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    grid-gap: 10px;
}

.collection{
    position: relative;
    border: 1px solid #d3cbcb;
 
    margin: 10px;
    box-shadow: rgb(0 0 0 / 35%) 0px 5px 15px;
}

.collection img{
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.collection p{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-align: center;
    color: rgb(5, 5, 5);
    font-size: 50px;
    text-transform: capitalize;
}

.collection:nth-child(3){
    grid-column: span 2;
    margin-bottom: 10px;
}
</style>
    <section>
        <div class="container" >
            <div class="row">
                <div class="col-sm-3">
                    @include('frontEnd.layouts.category_menu')
                </div>

                <div class="col-sm-9 padding-right">
                    <div class="features_items"><!--features_items-->
                        <h2 class="title text-center">Best Selling</h2>
                        @foreach($products as $product)
                            @if($product->category->status==1)
                                <div class="col-sm-4">
                                <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <a href="{{url('/product-detail',$product->id)}}"><img src="{{url('products/small/',$product->image)}}" alt="" /></a>
                                        <h2>$ {{$product->price}}</h2>
                                        <p>{{$product->p_name}}</p>
                                        <a href="{{url('/product-detail',$product->id)}}" class="btn btn-default add-to-cart">View Product</a>
                                    </div>
                                </div>
                                <div class="choose">
                                    <ul class="nav nav-pills nav-justified">
                                        {{-- <li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                                        <li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li> --}}
                                    </ul>
                                </div>
                            </div>
                        </div>
                            @endif
                        @endforeach
                    </div><!--features_items-->

                </div>
            </div>
        </div>
    </section>
    <section class="collection-container">
        <a href="#" class="collection">
          <img src="{{asset('frontEnd/images/home/2.jpg')}}" alt="" />
          <p class="collection-title">
            women <br />
            apparels
          </p>
        </a>
        <a href="#" class="collection">
          <img src="{{asset('frontEnd/images/home/1.jpg')}}" alt="" />
          <p class="collection-title">
            men <br />
            apparels
          </p>
        </a>
        <a href="#" class="collection">
          <img src="{{asset('frontEnd/images/home/3.jpg')}}" alt="" />
          <p class="collection-title">accessories</p>
        </a>
      </section>
@endsection
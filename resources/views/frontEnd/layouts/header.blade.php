<header id="header"><!--header-->
    <div class="header_top"><!--header_top-->
        {{-- <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="contactinfo">
                        <ul class="nav nav-pills">
                            <li><a href="#"><i class="fa fa-phone"></i> 010 010010</a></li>
                            <li><a href="#"><i class="fa fa-envelope"></i> info@nodomain.com</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="social-icons pull-right">
                        <ul class="nav navbar-nav">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> --}}
    </div><!--/header_top-->

    <div class="header-middle"><!--header-middle-->
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <div class="logo pull-left">
                        <a href="{{url('/')}}"><img class="brand-logo"  src="{{asset('frontEnd/images/home/logo.webp')}}" alt="" /></a>
                    </div>
                    <div class="btn-group pull-right">
                        {{-- <div class="btn-group">
                            <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                                USA
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="#">Canada</a></li>
                                <li><a href="#">UK</a></li>
                            </ul>
                        </div> --}}

                        {{-- <div class="btn-group">
                            <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
                                DOLLAR
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="#">Canadian Dollar</a></li>
                                <li><a href="#">Pound</a></li>
                            </ul>
                        </div> --}}
                    </div>
                </div>
                <div class="col-sm-7">
                    <div class="search_box pull-right">
                        <form action="{{route('product.search')}}" method="post">
                            @csrf
                            <input type="text" name="search_keywords" placeholder="search brand, product"/>
                        </form>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="shop-menu pull-right">
                        <ul class="nav navbar-nav">
                           
                            @if(Auth::check())
                                <li><a href="{{url('/myaccount')}}"><img class="" src="{{asset('frontEnd/images/home/user.png')}}"/></a></li>
                                <li><a href="{{ url('/logout') }}" alt="logout"><i class="fa fa-lock" style="font-size: 31px;"></i>  </a>
                            @else
                                <li><a href="{{url('/login_page')}}"><img class="" src="{{asset('frontEnd/images/home/user.png')}}"/></li>
                            @endif
                            <li><a href="{{url('/viewcart')}}"><img class="" src="{{asset('frontEnd/images/home/cart.png')}}"/> 
                                @php 
                                if(Auth::user()){
                                    $user_id = Auth::user()->id;
                                    $cart=DB::table('cart')->where('user_id',$user_id)->count();
                                }
                                @endphp
                               {{-- <span style="color: white;background: red; font-weight: bold;font-style: initial;border-radius: 50px;
                                        padding: 4px;">
                                </span>  --}}
                                
                            </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-middle-->
    <div class="header-bottom"><!--header-bottom-->
        <div class="container">
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="mainmenu" style="float: right;">
                        <ul class="nav navbar-nav collapse navbar-collapse">
                            <li><a href="{{url('/')}}" class="active">Home</a></li>
                            <li class="dropdown"><a href="#">Shop<i class="fa fa-angle-down"></i></a>
                                <ul role="menu" class="sub-menu">
                                    <li><a href="{{url('/list-products')}}">Products</a></li>
                                    <li><a href="{{url('/myaccount')}}">Account</a></li>
                                    <li><a href="{{url('/viewcart')}}">Cart</a></li>
                                </ul>
                            </li>
                            <li><a href="{{route('contact')}}">Contact</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-9"></div>
                {{-- <div class="col-sm-3">
                    <div class="search_box pull-right">
                        <input type="text" placeholder="Search"/>
                    </div>
                </div> --}}
            </div>

            @if (URL::current() != "http://127.0.0.1:8000/login_page")

            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                  <li data-target="#myCarousel" data-slide-to="1"></li>
                  <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
            
                <!-- Wrapper for slides -->
                <div class="carousel-inner" style="height: 352px;">
                  <div class="item active">
                    <img src="{{asset('frontEnd/images/home/1.jpg')}}" alt="Los Angeles" style="width:100%;">
                  </div>
            
                  <div class="item">
                    <img src="{{asset('frontEnd/images/home/2.jpg')}}" alt="Chicago" style="width:100%;">
                  </div>
                
                  <div class="item">
                    <img src="{{asset('frontEnd/images/home/3.jpg')}}" alt="New york" style="width:100%;">
                  </div>
                </div>
            
                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                  <span class="glyphicon glyphicon-chevron-left"></span>
                  <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                  <span class="glyphicon glyphicon-chevron-right"></span>
                  <span class="sr-only">Next</span>
                </a>
              </div>

            @endif
            
           
        </div>

    </div><!--/header-bottom-->
</header><!--/header-->


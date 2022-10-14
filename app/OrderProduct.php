<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderProduct extends Model
{
    protected $table='orders_product';
    protected $primaryKey='id';
    protected $fillable=['user_id','order_id','product_id','product_name','product_code','product_size','product_color','product_qty','session_id'];
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    protected $table='contact';
    protected $primaryKey='id';
    protected $fillable=['name','email','phone','address'];
}

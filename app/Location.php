<?php

namespace Framework;

use Illuminate\Database\Eloquent\Model;
use Phaza\LaravelPostgis\Eloquent\PostgisTrait;

class Location extends Model
{
    use PostgisTrait;

    protected  $fillable = [
        'name',
        'address',
    ];

    protected $postgisFields = [
        'location',
        'polygon',
    ];
}

<?php

namespace Framework\Http\Controllers;

use Framework\Location;
use Illuminate\Http\Request;
use Phaza\LaravelPostgis\Geometries\MultiPoint;
use Phaza\LaravelPostgis\Geometries\Point;
use Phaza\LaravelPostgis\Geometries\Polygon;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $location1 = new Location();
        $location1->name = 'Googleplex';
        $location1->address = '1600 Amphitheatre Pkwy Mountain View, CA 94042';
        $location1->location = new Point(37.422156, -122.084321);
        $location1->save();

        $location2 = Location::first();
        dd($location2);


        return view('home');
    }
}

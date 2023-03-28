<?php
 
namespace App\Http\Controllers\Front;
 
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\View;
 
class FrontController extends Controller
{
    /**
     * Show home front page.
     *
     * @param  int  $id
     * @return View
     */
    public function index()
    {
        return view('front.front', []);
    }
}
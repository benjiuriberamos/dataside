<?php
 
namespace App\Http\Controllers\Front;
 
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\DB;
 
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
        $products = DB::table('products')->where('active', '1')->get();
        // dd($products);
        return view('front.front', ['productos' => $products]);
    }
}
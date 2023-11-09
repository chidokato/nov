<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

use App\Models\Menu;
use App\Models\Category;
use App\Models\Post;
use App\Models\Setting;
use App\Models\Slider;

// $locale = App::currentLocale();

class HomeController extends Controller
{
    function __construct()
    {
        $setting = Setting::find('1');
        $menu = Menu::where('parent', 0)->get();
        view()->share( [
            'setting'=>$setting,
            'menu'=>$menu,
        ]);
    }

    public function index()
    {
        $slider = Slider::get();
        return view('pages.home', compact(
            'slider',
        ));
    }

    // public function about()
    // {
    //     $category = CategoryTranslation::join('categories', 'categories.id', '=', 'category_translations.category_id')
    //         ->where('locale', $locale)->where('parent', 0)
    //         ->select('category_translations.*')->orderBy('categories.view', 'asc')->get();
    //     return view('pages.about', compact(
    //         'category',
    //     ));
    // }

    // public function contact()
    // {
    //     $locale = App::currentLocale();
    //     $category = Category::where('parent', 0)
    //         ->select('category_translations.*')->orderBy('categories.view', 'asc')->get();
    //     return view('pages.contact', [
    //         'category'=>$category,
    //     ]);
    // }

    public function category($slug)
    {
        $data = Category::where('slug', $slug)->first();
        // cat_array
        $cat_array = [$data["id"]];
        $cates = Category::where('parent', $data["id"])->get();
        foreach ($cates as $key => $cate) {
            $cat_array[] = $cate->id;
        }
        // cat_array
        if ($slug == 'gioi-thieu') {
            return view('pages.about', compact(
                'data',
            ));
        }elseif($slug == 'san-pham'){
            $post = Post::where('category_id', $data->id)->orderBy('updated_at', 'DESC')->paginate(8);
            return view('pages.sanpham', compact(
                'data',
                'post'
            ));
        }
        elseif($slug == 'canh-quan'){
            $post = Post::where('category_id', $data->id)->orderBy('updated_at', 'DESC')->paginate(8);
            return view('pages.canhquan', compact(
                'data',
                'post'
            ));
        }
    }

    public function post($catslug, $slug)
    {
        $post = Post::where('slug', $slug)->first();
        $cat = Category::where('slug', $catslug)->first();
        if ($post->sort_by == 'Product') {
            return view('pages.project', compact(
                'post',
                // 'related_post',
            ));
        }elseif ($post->sort_by == 'News') {
            return view('pages.post', compact(
                'post',
                'cat',
                // 'related_post',
            ));
        }
        
    }
}

<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Session;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;

use Image;
use File;

use App\Models\Category;
use App\Models\Post;
use App\Models\Images;


class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $post = Post::where('sort_by', 'News')->orderBy('id', 'DESC')->Paginate(30);
        return view('admin.post.index', compact('post'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $category = Category::where('sort_by', 'News')->orderBy('id', 'DESC')->get();
        return view('admin.post.create')->with(compact('category'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->all();
        $post = new Post();
        $post->user_id = Auth::User()->id;
        $post->status = 'true';
        $post->sort_by = 'News';
        $post->slug = Str::slug($data['name'], '-');
        $post->name = $data['name'];
        $post->category_id = $data['category_id'];
        $post->detail = $data['detail'];
        $post->content = $data['content'];
        $post->title = $data['title'];
        $post->description = $data['description'];
        // thêm ảnh
        if ($request->hasFile('img')) {
            $file = $request->file('img');
            $filename = $file->getClientOriginalName();
            while(file_exists("data/news/".$filename)){$filename = rand(0,99)."_".$filename;}
            $file->move('data/news', $filename);
            $post->img = $filename;
        }
        // thêm ảnh
        $post->save();

        if($request->hasFile('imgdetail')){
            foreach ($request->file('imgdetail') as $file) {
                if(isset($file)){
                    $Images = new Images();
                    $Images->post_id = $post->id;
                    $filename = $file->getClientOriginalName();
                    while(file_exists("data/product/detail/".$filename)){$filename = rand(0,99)."_".$filename;}
                    $file->move('data/product/detail', $filename);
                    $Images->img = $filename;
                    $Images->save();
                }
            }
        }
        return redirect('admin/post')->with('Success','Success');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $category = Category::where('sort_by', 'News')->get();
        $data = Post::find($id);
        $images = Images::where('post_id', $data->id)->get();
        return view('admin.post.edit')->with(compact('category', 'data', 'images'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data = $request->all();
        $post = Post::find($id);
        $post->slug = Str::slug($data['name'], '-');
        $post->name = $data['name'];
        $post->category_id = $data['category_id'];
        $post->detail = $data['detail'];
        if (isset($data['info'])) {
            $post->info = $data['info'];
        }
        $post->content = $data['content'];
        $post->title = $data['title'];
        $post->description = $data['description'];
        // thêm ảnh
        if ($request->hasFile('img')) {
            if(File::exists('data/news/'.$post->img)) { File::delete('data/news/'.$post->img);} // xóa ảnh cũ
            $file = $request->file('img');
            $filename = $file->getClientOriginalName();
            while(file_exists("data/news/".$filename)){$filename = rand(0,99)."_".$filename;}
            $file->move('data/news', $filename);
            $post->img = $filename;
        }
        // thêm ảnh
        $post->save();

        if($request->hasFile('imgdetail')){
            foreach ($request->file('imgdetail') as $file) {
                if(isset($file)){
                    $Images = new Images();
                    $Images->post_id = $post->id;
                    $filename = $file->getClientOriginalName();
                    while(file_exists("data/product/detail/".$filename)){$filename = rand(0,99)."_".$filename;}
                    $file->move('data/product/detail', $filename);
                    $Images->img = $filename;
                    $Images->save();
                }
            }
        }

        
        return redirect()->back()->with('Success','Success');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $Post = Post::find($id);
        if(File::exists('data/news/'.$Post->img)) { File::delete('data/news/'.$Post->img);} // xóa ảnh cũ
        $Post->delete();
        return redirect()->back()->with('Success','Success');
    }
}
